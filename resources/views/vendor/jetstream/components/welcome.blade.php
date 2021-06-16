<section class="flex items-center justify-center bg-gray-800" style="height: 500px;">
    <div class="text-center">
        <p class="text-xl font-medium tracking-wider text-gray-300">This is a Laravel APP</p>
        <h2 class="mt-6 text-3xl font-bold text-white md:text-5xl">Hey you! Welcome to<br> Boleias Application</h2>

        <div class="flex justify-center mt-8">
            <a class="px-8 py-2 text-lg font-medium text-white transition-colors duration-300 transform bg-indigo-600 rounded hover:bg-indigo-500"
                href="https://laravel.com/docs/8.x/installation" target="_blank">Get In Touch</a>
        </div>
    </div>
</section>


<section class="bg-white">
    <div class="max-w-5xl px-6 py-16 mx-auto">
        <div class="items-center md:flex md:space-x-6">
            <div class="md:w-1/2">
                <h3 class="text-2xl font-semibold text-gray-800">Here u can search for Boleias<br> posted for all the users</h3>
                <p class="max-w-md mt-4 text-gray-600">It is possible to add your own Boleia by registering all the informations needed in the form. You can also search for a particular Boleia by filtering all boleias available. If you want to take a Boleia, just contact the driver and let them know.</p>
                <a href="{{ route('boleias.index') }}" class="block mt-8 text-indigo-700 underline">Boleias list</a>
            </div>

            <div class="mt-8 md:mt-0 md:w-1/2">
                <div class="flex items-center justify-center">
                    <div class="max-w-md">
                        <img class="object-cover object-center w-full rounded-md shadow" style="height: 500px;"
                            src="/images/boleia1.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="bg-white">
    <div class="max-w-5xl px-6 py-16 mx-auto">
        <div class="items-center md:flex md:space-x-6">
            <div class="md:w-1/2">
                <div class="flex items-center justify-center">
                    <div class="max-w-md">
                        <img class="object-cover object-center w-full rounded-md shadow" style="height: 500px;"
                            src="/images/boleia3.png">
                    </div>
                </div>
            </div>

            <div class="mt-8 md:mt-0 md:w-1/2">
                <h3 class="text-2xl font-semibold text-gray-800">Manage all your Boleias <br> by deleting or editing</h3>
                <p class="max-w-md mt-4 text-gray-600">This feature can help you manage all your boleias.
                    If you are done with a Boleia you can just delete them, and if you put some wrong data you can just edit it. Be sure to pay attention to your mobile phone, you can receive a call from others users to take your boleia.
                </p>
                <a href="{{route('boleias.minhas')}}" class="block mt-8 text-indigo-700 underline">Manage your Boleias</a>
            </div>
        </div>
    </div>
</section>

<section class="bg-white">
    <div class="max-w-5xl px-6 py-16 mx-auto">
        <h2 class="text-3xl font-semibold text-gray-800">This Website Application, <br> was made for Engenheria de Software</h2>
        <p class="max-w-lg mt-4 text-gray-600">There is a subject name Engenheria de Software for Computing Graduation in ISMAI - Instituto Superior da Maia from Portugal. This Web App a project for evaluation for the subject </p>
        <div class="grid gap-8 mt-10 md:mt-20 md:grid-cols-2">
            <div class="flex space-x-4">
                <svg class="w-6 h-6 text-gray-500" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M47.6268 23.7062C48.2466 24.4484 48.2466 25.5277 47.6268 26.2699L44.4812 30.0372C43.803 30.8493 43.4742 31.8971 43.5669 32.9512L44.0044 37.9287C44.0912 38.9165 43.4411 39.8188 42.4765 40.0491L38.0619 41.1031C36.9808 41.3612 36.0559 42.0575 35.5089 43.025L33.2053 47.099C32.6961 47.9995 31.5844 48.3631 30.6415 47.9375L26.6498 46.1358C25.6003 45.6621 24.3976 45.6636 23.3493 46.14L19.3597 47.9531C18.4161 48.3819 17.3014 48.0189 16.7912 47.1168L14.4911 43.0489C13.9441 42.0814 13.0192 41.3851 11.9381 41.127L7.52286 40.0728C6.55849 39.8426 5.90838 38.9406 5.99496 37.9529L6.43346 32.9505C6.52583 31.8968 6.19706 30.8494 5.5191 30.0375L2.37029 26.2665C1.75138 25.5253 1.75043 24.4477 2.36803 23.7054L5.52362 19.9127C6.1988 19.1012 6.52582 18.0557 6.43339 17.0041L5.99624 12.0308C5.90922 11.0408 6.56225 10.1372 7.52946 9.90904L11.9298 8.87123C13.0153 8.61522 13.9446 7.91765 14.4935 6.94684L16.7947 2.87709C17.3039 1.97664 18.4156 1.61302 19.3585 2.03858L23.3544 3.8422C24.4007 4.31444 25.5993 4.31444 26.6456 3.8422L30.6415 2.03858C31.5844 1.61301 32.6961 1.97663 33.2053 2.87709L35.5089 6.95112C36.0559 7.9186 36.9808 8.61486 38.0619 8.87297L42.4765 9.92701C43.4411 10.1573 44.0912 11.0596 44.0044 12.0474L43.5669 17.0249C43.4742 18.079 43.803 19.1268 44.4812 19.939L47.6268 23.7062ZM25 37.9326C26.8075 37.9326 28.2727 36.4674 28.2727 34.6599V34.4275C28.2727 32.6201 26.8075 31.1548 25 31.1548C23.1925 31.1548 21.7273 32.6201 21.7273 34.4275V34.6599C21.7273 36.4674 23.1925 37.9326 25 37.9326ZM25 28.377C26.8075 28.377 28.2727 26.9117 28.2727 25.1042V15.3162C28.2727 13.5087 26.8075 12.0435 25 12.0435C23.1925 12.0435 21.7273 13.5087 21.7273 15.3162V25.1042C21.7273 26.9117 23.1925 28.377 25 28.377Z"
                        stroke="currentColor" stroke-width="2" />
                </svg>

                <div>
                    <h4 class="text-xl font-medium text-gray-800">Design concept</h4>
                    <p class="max-w-lg mt-4 text-gray-600">This website application uses tailwindcss for styling. <a href="https://tailwindcss.com/docs" target="_blank" class="block mt-8 text-indigo-700 underline">Learn more</a></p>
                </div>
            </div>

            <div class="flex space-x-4">
                <svg class="w-6 h-6 text-gray-500" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M1 25C1 11.8023 11.8023 1 25 1C38.1977 1 49 11.8023 49 25C49 38.1977 38.1977 49 25 49C11.8023 49 1 38.1977 1 25ZM33.36 35.3573C34.7228 36.1959 36.5074 35.771 37.346 34.4082C38.1913 33.0346 37.7522 31.2351 36.3692 30.4053L28.221 25.5164C27.6186 25.155 27.25 24.504 27.25 23.8014V14.375C27.25 12.7872 25.9628 11.5 24.375 11.5C22.7872 11.5 21.5 12.7872 21.5 14.375V25.8236C21.5 27.2127 22.2206 28.5023 23.4036 29.2302L33.36 35.3573Z"
                        stroke="currentColor" stroke-width="2" />
                </svg>

                <div>
                    <h4 class="text-xl font-medium text-gray-800">Developing websites</h4>
                    <p class="max-w-lg mt-4 text-gray-600">This website application was developed using laravel but most importantly it was built from a framework called jetstream. This framework basically created all the user authentication functionalities and added a system to manage that user.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="bg-white">
    <div class="max-w-5xl px-6 py-16 mx-auto">
        <div class="px-8 py-12 bg-gray-800 rounded-md md:px-20 md:flex md:items-center md:justify-between">
            <div>
                <h3 class="text-2xl font-semibold text-white">Jetstream Framework info</h3>
                <p class="max-w-md mt-4 text-gray-400">Laravel Jetstream is a beautifully designed application starter kit for Laravel and provides the perfect starting point for your next Laravel application. Jetstream provides the implementation for your application's login, registration, email verification, two-factor authentication, session management, API via Laravel Sanctum, and optional team management features. </p>
            </div>

            <a class="block px-8 py-2 mt-6 text-lg font-medium text-center text-white transition-colors duration-300 transform bg-indigo-600 rounded md:mt-0 hover:bg-indigo-500"
                href="https://jetstream.laravel.com/2.x/introduction.html" target="_blank">Get In Touch</a>
        </div>
    </div>
</section>



<section class="bg-white">
    <div class="max-w-5xl px-6 py-16 mx-auto text-center">
        <h2 class="text-3xl font-semibold text-gray-800">Our Team</h2>
        <div class="grid gap-8 mt-6 md:grid-cols-2 lg:grid-cols-3">
            <div>
                <img class="object-cover object-center w-full h-64 rounded-md shadow"
                    src="/images/misael.png">
                <h3 class="mt-2 font-medium text-gray-700">Misael Figueroa</h3>
                <p class="text-sm text-gray-600">CEO</p>
            </div>

            <div>
                <img class="object-cover object-center w-full h-64 rounded-md shadow"
                    src="/images/paulo.png">
                <h3 class="mt-2 font-medium text-gray-700">Paulo Teixeira</h3>
                <p class="text-sm text-gray-600">CEO</p>
            </div>

            <div>
                <img class="object-cover object-center w-full h-64 rounded-md shadow"
                    src="https://images.unsplash.com/photo-1614030126544-b79b92e29e98?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
                <h3 class="mt-2 font-medium text-gray-700">Derick Costa</h3>
                <p class="text-sm text-gray-600">CEO</p>
            </div>
        </div>
    </div>
</section>

<footer class="border-t">
    <div class="container flex items-center justify-between px-6 py-8 mx-auto">
        <p class="text-gray-500">© 2019-2021   </p>
        <img src="/images/imgdashboard.png" width="15%" height="15%" class="block w-15 h-15 ">
        <p class="font-medium text-gray-700">Terms of Service</p>
    </div>
</footer>
</div>
