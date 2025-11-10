@extends('layouts.layout')

@section('content')
    @include('home.hero-slider')

    <!-- =============== START OF TOP MOVIES SECTION =============== -->
    <section class="top-movies2">
        <div class="container">
            <div class="row">
                @php
                    $containerClasses = ['col-sm-6 col-xs-12', 'col-sm-6 d-none d-sm-block', 'd-none d-lg-block', 'd-none d-lg-block'];
                @endphp
                @foreach ($top4movies as $movie)
                    @include('components.movie-item-dark', [
                        'movie' => $movie,
                        'containerClass' => $containerClasses[$loop->index],
                    ])
                @endforeach
            </div>
        </div>
    </section>
    <!-- =============== END OF TOP MOVIES SECTION =============== -->

    

    <!-- =============== START OF LATEST RELEASES SECTION =============== -->
    <section class="latest-releases bg-light ptb100">
        <div class="container">

            <!-- Start of row -->
            <div class="row justify-content-center">
                <div class="col-md-7 text-center">
                    <h2 class="title">Anime Terbaru</h2>
                </div>
            </div>
            <!-- End of row -->
        </div>
        <!-- End of Container -->

        <!-- Start of Latest Releases Slider -->
        <div class="owl-carousel latest-releases-slider">
            @each('components.movie-item', $newest_movies, 'movie')
        </div>
        <!-- End of Latest Releases Slider -->

        <div class="text-center pt-3">
            <a class="btn btn-main btn-effect" href="{{ route('movies.index') }}">Lihat Semua Anime</a>
        </div>
    </section>
    <!-- =============== END OF LATEST RELEASES SECTION =============== -->

    <!-- =============== START OF FEATURES SECTION =============== -->
    <section class="features">
        <div class="row">

           <!--  <div class="col-md-6 col-sm-12 with-bg overlay-gradient"
                style="background: url({{ asset('images/other/people-cinema.jpg') }})"></div> -->

                <div class="col-md-6 col-sm-12 with-bg overlay-gradient"
                     style="background: url({{ asset('images/branding/posters/g3.jpg') }}); background-size: cover; height: 440px; width: 100%;">
                     <img src="{{ asset('images/branding/posters/g3.jpg') }}" style="height: 100%; width: 100%; object-fit: cover;" alt="Poster">
                </div>




            <div class="col-md-6 col-sm-12 bg-white">
                <div class="features-wrapper">
                    <h3 class="title">Tonton Anime Kesukaanmu!</h3>
                    @guest
                        <p>Registrasi sekarang untuk membeli tiket!</p>
                        <a class="btn btn-main btn-effect" href="{{ route('register') }}">Register</a>
                    @endguest

                    @auth
                        <p>Beli tiketnya sekarang sebelum kehabisan!</p>
                        <a class="btn btn-main btn-effect" href="{{ route('register') }}">Beli</a>
                    @endauth
                </div>
            </div>

        </div>
    </section>
    <!-- =============== END OF FEATURES SECTION =============== -->

    <!-- =============== END OF SUBSCRIBE SECTION =============== -->
    <section class="subscribe bg-light2 ptb100">
        <div class="container">

           
        


        </div>
    </section>
    @include('components.flash-message')
    <!-- =============== END OF SUBSCRIBE SECTION =============== -->
@endsection
