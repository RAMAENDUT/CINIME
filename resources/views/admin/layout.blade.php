<!DOCTYPE html>
<html lang="en">

@php
    // Manager requests feature removed — no runtime request query here.
@endphp

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- ===== Favicon ===== -->
    <link rel="shortcut icon" href={{ asset('images/branding/logos/favicon.png') }} type="image/x-icon">

    <title>{{ config('app.name') }} | Admin Panel</title>

    <!-- Custom fonts for this template-->
    <link rel="stylesheet" href="{{ asset('css/font-awesome-all.css') }}">
    <link rel="stylesheet" href="{{ asset('css/nunito-font.css') }}">

    <!-- Custom styles for this template-->
    <link href="{{ asset('css/sb-admin-2.min.css') }}" rel="stylesheet">

    @stack('head')

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <li class="nav-item">
                <h1 class="nav-link text-white" onclick="window.location.href='{{ route('home') }}'" style="cursor: pointer;">CINIME</h1>
                    </li>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item {{ \Request::route()->getName() === 'admin.dashboard' ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">Users</div>

            <li class="nav-item {{ Route::is('admin.users.*') ? 'active' : '' }}">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers"
                    aria-expanded="true" aria-controls="collapseUsers">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Users</span>
                </a>
                <div id="collapseUsers" class="collapse {{ Route::is('admin.users.*') ? 'show' : '' }}"
                    aria-labelledby="headingUsers" data-parent="#accordionSidebar">
                    <div class="bg-white p-3 collapse-inner rounded shadow-sm">
                        <a class="collapse-item {{ Route::is('admin.users.index') ? 'active' : '' }}"
                            href="{{ route('admin.users.index') }}">View Users</a>
                        <a class="collapse-item {{ Route::is('admin.users.create') ? 'active' : '' }}"
                            href="{{ route('admin.users.create') }}">Add User</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">Anime</div>

            <!-- Nav Item - Movies -->
            <li class="nav-item {{ Route::is('movies.*') ? 'active' : '' }}">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMovie"
                    aria-expanded="true" aria-controls="collapseMovie">
                    <i class="fas fa-fw fa-film"></i>
                    <span>Anime</span>
                </a>
                <div id="collapseMovie" class="collapse {{ Route::is('movies.*') ? 'show' : '' }}"
                    aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item {{ Route::is(['admin.movies.index', 'admin.movies.show', 'admin.movies.edit']) ? 'active' : '' }}"
                            href="{{ route('admin.movies.index') }}">View Anime</a>
                        <a class="collapse-item {{ Route::is('admin.movies.create') ? 'active' : '' }}"
                            href="{{ route('admin.movies.create') }}">Add Anime</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">Jadwal</div>

            <!-- Nav Item - Shows -->
            <li class="nav-item {{ Route::is('shows.*') ? 'active' : '' }}">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseShow"
                    aria-expanded="true" aria-controls="collapseShow">
                    <i class="fas fa-fw fa-compact-disc"></i>
                    <span>Jadwal</span>
                </a>
                <div id="collapseShow" class="collapse {{ Route::is('shows.*') ? 'show' : '' }}"
                    aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item {{ Route::is(['admin.shows.index', 'admin.shows.edit', 'admin.shows.show']) ? 'active' : '' }}"
                            href="{{ route('admin.shows.index') }}">View
                            Jadwal</a>
                        <a class="collapse-item {{ Route::is('admin.shows.create') ? 'active' : '' }}"
                            href="{{ route('admin.shows.create') }}">Add
                            Jadwal</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">Ruang</div>

            <!-- Nav Item - Rooms -->
            <li class="nav-item {{ Route::is('rooms.*') ? 'active' : '' }}">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRoom"
                    aria-expanded="true" aria-controls="collapseRoom">
                    <i class="fas fa-fw fa-door-open"></i>
                    <span>Rooms</span>
                </a>
                <div id="collapseRoom" class="collapse {{ Route::is('rooms.*') ? 'show' : '' }}"
                    aria-labelledby="headingRoom" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item {{ Route::is('admin.rooms.index') ? 'active' : '' }}"
                            href="{{ route('admin.rooms.index') }}">View Rooms</a>
                        <a class="collapse-item {{ Route::is('admin.rooms.create') ? 'active' : '' }}"
                            href="{{ route('admin.rooms.create') }}">Add Room</a>
                    </div>
                </div>
            </li>

            {{-- Manager requests menu removed --}}

            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search removed -->
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- XS search dropdown removed -->

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span
                                    class="mr-2 d-none d-lg-inline text-gray-600 small">{{ auth()->user()->username }}</span>
                                <img class="img-profile rounded-circle"
                                    src="{{ asset('images/other/profile-1.svg') }}">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                {{-- Manager requests menu removed --}}
                                <a class="dropdown-item" href="{{ route('admin.users.index') }}">
                                    <i class="fas fa-users fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Users
                                </a>
                                <a class="dropdown-item" href="{{ route('admin.movies.index') }}">
                                    <i class="fas fa-film fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Movies
                                </a>
                                <a class="dropdown-item" href="{{ route('admin.shows.index') }}">
                                    <i class="fas fa-compact-disc fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Shows
                                </a>
                                <a class="dropdown-item" href="{{ route('admin.rooms.index') }}">
                                    <i class="fas fa-door-open fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Rooms
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal"
                                    data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    @yield('content')

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; {{ config('app.name') }} 2045</span>
                        </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Pilih "Logout" di bawah kalau kamu mau mengakhiri sesi.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <form id="logout_form" method="POST" action="{{ route('logout') }}">
                        @csrf
                        <a class="btn btn-primary text-white" href="javascript:{}"
                            onclick="document.getElementById('logout_form').submit();">Logout</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('js/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.bundle.js') }}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('js/jquery.easing.min.js') }}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('js/sb-admin-2.js') }}"></script>

    @stack('foot')

</body>

</html>
