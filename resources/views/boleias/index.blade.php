<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Boleias List
        </h2>
    </x-slot>

    <div>
        <div class="max-w-6xl mx-auto py-10 sm:px-6 lg:px-8">

            @if (session('success'))
            <div class="mb-4 bg-green-300 text-green-800 px-3 py-3 border-t-4 border-f-800 shadow-xl flex justify-between items-center rounded">
                {{ session('success') }}
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
            </div>
            @endif

            <div class="block mb-8">
                <a href="{{ route('boleias.create') }}" class="inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150">Add Boleia</a>
                @can('task_access')
                <a href="{{ route('boleias.minhas') }}"  class="inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150 ml-4">Minhas Boleias</a>
                @endcan
            </div>

            <div class="bg-gray-100 flex items-center justify-left rounded bm-2">
                <form class="relative px-4 py-1 rounded border-2 border-gray-800 text-gray-800" action="{{ route('boleias.index') }}" method="get">
                    @csrf
                          <input class="bg-gray-100 focus:outline-none text-sm text-black"  type="text"  placeholder="Filter boleias" name="search" value="{{ request()->query('search') }}"/>
                          <input class="hover:text-gray-600 ml-6 bg-transparent inline-flex bg-transparent font-medium text-gray-800 " type="submit" value="Search">
                </form>
            </div>

            @if ($boleias->count())
            <div class="mt-2 flex flex-col">
                <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                        <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                            <table class="min-w-full divide-y divide-gray-200 w-full">
                                <thead>
                                <tr>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Origem
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Destino
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Possíveis Paragens
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Data
                                    </th>
                                    <th scope="col" class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Condutor
                                    </th>
                                    <th scope="col" width="200" class="px-6 py-3 bg-gray-50"></th>
                                </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                @foreach ($boleias as $boleia)
                                    <tr>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                            {{ $boleia->origem }}
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                            {{ $boleia->destino }}
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                            {{ $boleia->paragens }}
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                            {{ $boleia->date }}
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">

                                                {{ $boleia->user->name }}


                                        </td>

                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                            <a href="{{ route('boleias.show', $boleia->id) }}" class="text-blue-600 hover:text-blue-900 mb-2 mr-2">View</a>
                                            @can('user_access')
                                            <a href="{{ route('boleias.edit', $boleia->id) }}" class="text-indigo-600 hover:text-indigo-900 mb-2 mr-2">Edit</a>
                                            <form class="inline-block" action="{{ route('boleias.destroy', $boleia->id) }}" method="POST" onsubmit="return confirm('Are you sure?');">
                                                <input type="hidden" name="_method" value="DELETE">
                                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                <input type="submit" class="text-red-600 hover:text-red-900 mb-2 mr-2" value="Delete">
                                            </form>
                                            @endcan
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="mt-2">
                            {!! $boleias->appends(['search' => request()->query('search')])->render() !!}
                            </div>
                            @else
                                <p class="text-left">
                                    No results found for <strong>{{ request()->query('search') }}</strong>
                                </p>
                            @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
