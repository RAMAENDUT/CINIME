<!-- =============== START OF RESPONSIVE - MAIN NAV =============== -->
<nav id="main-mobile-nav"></nav>
<!-- =============== END OF RESPONSIVE - MAIN NAV =============== -->

<!-- =============== START OF HEADER NAVIGATION =============== -->
<!-- Insert the class "sticky" in the header if you want a sticky header -->
<header class="header text-black">
    <div class="container-fluid">

        <!-- ====== Start of Navbar ====== -->
        <nav class="navbar navbar-expand-lg">
        <h1 class="nav-link" onclick="window.location.href='{{ route('home') }}'" style="cursor: pointer;">CINIME</h1>

            <!-- Login Button on Responsive -->
            <a href="{{ route('login') }}" class="login-mobile-btn border px-2 py-1"
                style="border-radius: 0.5rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 35%;">
                <i class="icon-user"></i>
                @auth
                    {{ auth()->user()->first_name }}
                @endauth
            </a>

            <button id="mobile-nav-toggler" class="hamburger hamburger--collapse" type="button">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </button>

            <!-- ====== Start of #main-nav ====== -->
            <div class="navbar-collapse" id="main-nav">

                <!-- ====== Start of Main Menu ====== -->
                <ul class="navbar-nav mx-auto" id="main-menu">
                    <!-- Menu Item -->
                    <li class="nav-item">
                        <a class="nav-link" href={{ route('home') }}>Home</a>
                    </li>

                    <!-- Menu Item -->
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('movies.index') }}">Anime</a>
                    </li>

                    <li class="nav-item dropdown" id="location-menu" style="min-width: 100px; text-align: center;">
                    <a class="nav-link dropdown-toggle" href="#" id="locationDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Lokasi
                    </a>
                    <div class="dropdown-menu" aria-labelledby="locationDropdown">
                        <a class="dropdown-item" href="#" onclick="setLocation('Damkar')">Damkar</a>
                        <a class="dropdown-item" href="#" onclick="setLocation('Sindang')">Sindang</a>
                        <a class="dropdown-item" href="#" onclick="setLocation('Pakupatan')">Pakupatan</a>
                        <a class="dropdown-item" href="#" onclick="setLocation('Ciruas')">Ciruas</a>
                    </div>
                </li>


                    <!-- malas bikin folder rek -->
                    <script>
                        function setLocation(location) {
                            const locationMenu = document.getElementById('location-menu');
                            locationMenu.querySelector('.nav-link').innerText = location;
                        }
                    </script>


                </ul>

               <!--  <li class="nav-item dropdown" id="location-menu">
                    <a class="nav-link dropdown-toggle" href="#" id="locationDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Lokasi
                    </a>
                    <div class="dropdown-menu" aria-labelledby="locationDropdown">
                        <a class="dropdown-item" href="#" onclick="setLocation('Jakarta')">Jakarta</a>
                        <a class="dropdown-item" href="#" onclick="setLocation('Surabaya')">Surabaya</a>
                        <a class="dropdown-item" href="#" onclick="setLocation('Bandung')">Bandung</a>
                        <a class="dropdown-item" href="#" onclick="setLocation('Yogyakarta')">Yogyakarta</a>
                    </div>
                </li> -->
                
                <!-- ====== End of Main Menu ====== -->


                <!-- ====== Start of Extra Nav ====== -->
                <ul class="navbar-nav extra-nav">

                    <!-- Menu Item -->
                    @auth
                        <li class="nav-item notification-wrapper">
                            <a class="nav-link notification" href="{{ route('dashboard') }}">
                                <i class="fa fa-ticket"></i>
                                <span class="notification-count">{{ auth()->user()->reservations->count() }}</span>
                            </a>
                        </li>
                    @endauth

                    @auth
                        <li class="nav-item dropdown" style="z-index: 50;">
                            <a href="{{ route('dashboard') }}" class="btn btn-main btn-effect login-btn">
                                <i class="icon-user"></i>Hello, {{ auth()->user()->first_name }}</a>
                            <div class="dropdown-content rounded font-weight-normal">
                                <a href="{{ route('dashboard') }}">Akun</a>
                                <a href="{{ route('dashboard') }}">Histori Pembelian</a>
                                @can('admin')
                                    <a href="{{ route('admin.dashboard') }}">Admin Dashboard</a>
                                @endcan
                                @can('manager')
                                    <a href="{{ route('manager.dashboard') }}">Manager Dashboard</a>
                                @endcan
                                <form id="logout_form" method="POST" action="{{ route('logout') }}">
                                    @csrf
                                    <a href="javascript:{}" onclick="document.getElementById('logout_form').submit();">Log
                                        Out</a>
                                </form>
                            </div>
                        </li>
                    @else
                        <li class="nav-item">
                            <a href="{{ route('login') }}" class="btn btn-main btn-effect login-btn">
                                <i class="icon-user"></i>login</a>
                        </li>
                    @endauth

                </ul>
                <!-- ====== End of Extra Nav ====== -->

            </div>
            <!-- ====== End of #main-nav ====== -->
        </nav>
        <!-- ====== End of Navbar ====== -->

    </div>
</header>
<!-- =============== END OF HEADER NAVIGATION =============== -->
