<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Edit Boleia of {{ $boleia->user->name }}
        </h2>
    </x-slot>

    <div>
        <div class="max-w-4xl mx-auto py-10 sm:px-6 lg:px-8">
            <div class="mt-5 md:mt-0 md:col-span-2">
                <form method="post" action="{{ route('boleias.update', $boleia->id) }}">
                    @csrf
                    @method('PUT')
                    <div class="shadow overflow-hidden sm:rounded-md">
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="origem" class="block font-medium text-sm text-gray-700">Origem</label>
                            <input type="text" name="origem" id="origem" type="text" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                                   value="{{ old('origem', $boleia->origem) }}" />
                            @error('origem')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="destino" class="block font-medium text-sm text-gray-700">Destino</label>
                            <input type="text" name="destino" id="destino" type="text" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                            value="{{ old('destino', $boleia->destino) }}" />
                            @error('destino')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="paragens" class="block font-medium text-sm text-gray-700">Possíveis Paragens</label>
                            <input type="text" name="paragens" id="paragens" type="text" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                            value="{{ old('paragens', $boleia->paragens) }}" />
                            @error('paragens')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="lugares" class="block font-medium text-sm text-gray-700">Lugares Disponíveis</label>
                            <input name="lugares" id="lugares" type="number" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                            value="{{ old('lugares', $boleia->lugares) }}" />
                            @error('lugares')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="idiomas" class="block font-medium text-sm text-gray-700">Idiomas</label>
                            <input type="text" name="idiomas" id="idiomas" type="text" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                            value="{{ old('idiomas', $boleia->idiomas) }}" />
                            @error('idiomas')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="preco" class="block font-medium text-sm text-gray-700">Preço</label>
                            <input type="number" step="0.01" name="preco" id="preco" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                            value="{{ old('preco', $boleia->preco) }}" />
                            @error('preco')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="date" class="block font-medium text-sm text-gray-700">Data</label>
                            <input type="date" name="date" id="date" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                            value="{{ old('date', $boleia->date) }}"/>
                            @error('date')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="px-4 py-5 bg-white sm:p-6">
                            <label for="carro" class="block font-medium text-sm text-gray-700">Carro</label>
                            <input type="text" name="carro" id="carro" type="text" class="bg-gray-100 form-input rounded-md shadow-sm mt-1 block w-full"
                            value="{{ old('carro', $boleia->carro) }}"/>
                            @error('carro')
                                <p class="text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>

                        <div class="flex items-center justify-end px-4 py-3 bg-gray-50 text-right sm:px-6">
                            <a href="{{ route('boleias.index') }}"  class="bg-gray-200 hover:bg-gray-300 text-black font-bold py-2 px-4 rounded-md ml-4">Cancel</a>
                            <button class="ml-4 inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150">
                                Edit
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
