<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Models\Role;
use App\Models\User;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Boleia;
use Carbon\Carbon;

class UsersController extends Controller
{
    public function index(Request $request)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $search = request()->query('search');
        if ($search){
            $users = User::where('name', 'LIKE', "%{$search}%")->orWhere('email', 'LIKE', "%{$search}%")->paginate(20);
        }else{
            $users = User::orderBy('id', 'DESC')->paginate(20);
        }
        return view('users.index', compact('users'))->with('i', ($request->input('page', 1)-1)*20);

        /*abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $users = User::with('roles')->get();

        return view('users.index', compact('users'));*/
    }

    public function create()
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::pluck('title', 'id');

        return view('users.create', compact('roles'));
    }

   /* public function store(StoreUserRequest $request)
    {
        $input = $request->all();
        $input['email_verified_at'] = now();
        $user = User::create($request->validated());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('users.index');
    }*/
    public function store(StoreUserRequest $request)
    {
        $this->validate($request, ['name' => 'required', 'email' => 'required|unique:users', 'password' => 'required', 'roles.*'=>'integer', 'roles'=> 'required|array', 'phone' => 'required|unique:users|digits:9', 'email_verified_at'=> 'datetime']);

        $now = now();
        $input = $request->all();
        $input['email_verified_at'] = $now;
        $user = User::create($input);
        $user->roles()->sync($request->input('roles', []));
        return redirect()->route('users.index')->with('success', 'User created successfully!');
    }

    public function show(User $user)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('users.show', compact('user'));
    }

    public function edit(User $user)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::pluck('title', 'id');

        $user->load('roles');

        return view('users.edit', compact('user', 'roles'));
    }

    public function update(UpdateUserRequest $request, User $user)
    {
        $user->update($request->validated());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('users.index')->with('success', 'User updated successfully!');
    }

    public function destroy(User $user)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $boleias= Boleia::all();

        foreach ($boleias as $b){
            if ($b->user_id == $user->id) {
                $b->delete();
            }
        };
        $user->delete();

        return redirect()->route('users.index')->with('success', 'User deleted successfully!');
    }
}
