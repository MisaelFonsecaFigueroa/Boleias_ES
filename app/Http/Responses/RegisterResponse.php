<?php

namespace App\Http\Responses;
use Laravel\Fortify\Contracts\RegisterResponse as ContractsRegisterResponse;
use App\Models\User;

class RegisterResponse implements ContractsRegisterResponse
{
    public function toResponse($request)
    {

        $authuser = auth()->user();
        $user = User::where('id','LIKE', "{$authuser->id}")->first();

        /*if (auth()->user()->roles['Admin']) {
            return redirect()->route('users.index');
        }*/

        print($user->name);

        $admin = false;

        foreach ($user->roles as $role){
            if($role->title == 'Admin'){
                $admin = true;
            }
        }
        if ($admin == true){
            return redirect()->route('dashboard');
        }
        else {
            return redirect()->route('dashboard');
        }

        /*if ($user->roles->contains('Admin')){
            return redirect()->route('users.index');
            print($user->name);
        }
        return redirect()->route('tasks.index');**/
    }
}
