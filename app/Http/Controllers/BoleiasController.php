<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreBoleiaRequest;
use App\Http\Requests\UpdateBoleiaRequest;
use App\Models\Boleia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Symfony\Component\HttpFoundation\Response;

class BoleiasController extends Controller
{



    public function index(Request $request)
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $search = request()->query('search');
        //$minhas = request()->;


        if ($search){
            $boleias = Boleia::where('origem', 'LIKE', "%{$search}%")->orWhere('destino', 'LIKE', "%{$search}%")->orWhere('paragens', 'LIKE', "%{$search}%")->with('user')->paginate(20);
        }else{
            $boleias = Boleia::orderBy('id', 'DESC')->with('user')->paginate(20);
        }
        return view('boleias.index', compact('boleias', 'search'))->with('i', ($request->input('page', 1)-1)*20);


        /*
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $boleias = Boleia::all();

        return view('boleias.index', compact('boleias'));*/
    }



    public function create()
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('boleias.create');
    }

    public function store(StoreBoleiaRequest $request)
    {

        $userid = $request->user()->id;

        $request->validated();

        $boleia = new Boleia();
        $boleia->origem = $request->origem;
        $boleia->destino = $request->destino;
        $boleia->paragens = $request->paragens;
        $boleia->lugares = $request->lugares;
        $boleia->preco = $request->preco;
        $boleia->carro = $request->carro;
        $boleia->idiomas = $request->idiomas;
        $boleia->user_id = $userid;
        $boleia->date = $request->date;
        $boleia->save();

        return redirect()->route('boleias.index')->with('success', 'Boleia created successfully!');
    }

    public function show(Boleia $boleia)
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('boleias.show', compact('boleia'));
    }

   public function edit(Boleia $boleia)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('boleias.edit', compact('boleia'));
    }

   public function update(UpdateBoleiaRequest $request, Boleia $boleia)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');
        $boleia->update($request->validated());
        return redirect()->route('boleias.index')->with('success', 'Boleia updated successfully!');
    }

    public function destroy(Boleia $boleia)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $boleia->delete();

        return redirect()->route('boleias.index')->with('success', 'Boleia eliminated successfully!');
    }


    //Boleias do utilizador

    public function minhas(Request $request){

        $userr= auth()->user();
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $boleias = Boleia::where('user_id', 'LIKE', "{$userr->id}")->with('user')->orderBy('id', 'DESC')->paginate(20);

        return view('boleias.minhas', compact('boleias'))->with('i', ($request->input('page', 1)-1)*20);
    }

    public function createminhas()
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('boleias.createminhas');
    }

    public function storeminhas(StoreBoleiaRequest $request)
    {

        $userid = auth()->user();
        $request->validated();
        //dd($request);

        $boleia = new Boleia();
        $boleia->origem = $request->origem;
        $boleia->destino = $request->destino;
        $boleia->paragens = $request->paragens;
        $boleia->lugares = $request->lugares;
        $boleia->preco = $request->preco;
        $boleia->carro = $request->carro;
        $boleia->idiomas = $request->idiomas;
        $boleia->user_id = $userid->id;
        $boleia->date = $request->date;

        $boleia->save();
        //dd($boleia);
        return redirect()->route('boleias.minhas')->with('success', 'Boleia created successfully!');
    }


    public function showminhas(Boleia $boleia)
    {

        abort_if($boleia['user_id'] !== auth()->user()->id, Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('boleias.showminhas', compact('boleia'));
    }


    public function editminhas(Boleia $boleia)
    {

        abort_if($boleia['user_id'] !== auth()->user()->id, Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('boleias.editminhas', compact('boleia'));
    }

   public function updateminhas(UpdateBoleiaRequest $request, Boleia $boleia)
    {
        abort_if($boleia['user_id'] !== auth()->user()->id, Response::HTTP_FORBIDDEN, '403 Forbidden');

        $boleia->update($request->validated());

        return redirect()->route('boleias.minhas')->with('success', 'Boleia updated successfully!');
    }

    public function destroyminhas(Boleia $boleia)
    {

        abort_if($boleia['user_id'] !== auth()->user()->id, Response::HTTP_FORBIDDEN, '403 Forbidden');

        $boleia->delete();

        return redirect()->route('boleias.minhas')->with('success', 'Boleia deleted successfully!');
    }
}
