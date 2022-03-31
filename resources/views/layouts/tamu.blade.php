<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>{{ isset($title) ? $title.' | '.config('app.name') : config('app.name')}}</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="{{ asset('/myland/css/bootstrap.css') }}">
        <link rel="stylesheet" href="{{ asset('/myland/vendors/linericon/style.css') }}">
        <link rel="stylesheet" href="{{ asset('/myland/css/font-awesome.min.css') }}">
        <link rel="stylesheet" href="{{ asset('/myland/vendors/owl-carousel/owl.carousel.min.css') }}">
        <link rel="stylesheet" href="{{ asset('/myland/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css') }}">
        <link rel="stylesheet" href="{{ asset('/myland/vendors/nice-select/css/nice-select.css') }}">
        <link rel="stylesheet" href="{{ asset('/myland/vendors/owl-carousel/owl.carousel.min.css') }}">
        <!-- main css -->
        <link rel="stylesheet" href="{{ asset('/myland/css/style.css') }}">
        <link rel="stylesheet" href="{{ asset('/myland/css/responsive.css') }}">
        <link rel="stylesheet" href="{{ asset('/adminlte/dist/css/adminlte.min.css') }}">
        <link rel="stylesheet" href="{{ asset('/adminlte/plugins/fontawesome-free/css/all.min.css') }}">
        <link rel="stylesheet" href="{{ asset('/scss/style.css') }}">
    </head>
    <body>
        <!--================Header Area =================-->
        @include('layouts.inc_tamu.navbar')
        <!--================Header Area =================-->
        
        <!--================Banner Area =================-->
        @include('layouts.inc_tamu.banner')
        <!--================Banner Area =================-->
        
        <!--================ Accomodation Area  =================-->
        <section class="accomodation_area section_gap">
            @yield('content')
        </section>
        <!--================ Accomodation Area  =================-->
        
        <!--================ Facilities Area  =================-->
        @yield('content_fasilitas')
        <!--================ Facilities Area  =================-->
        
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="{{ asset('/myland/js/jquery-3.2.1.min.js') }}"></script>
        <script src="{{ asset('/myland/js/popper.js') }}"></script>
        <script src="{{ asset('/myland/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('/myland/vendors/owl-carousel/owl.carousel.min.js') }}"></script>
        <script src="{{ asset('/myland/js/jquery.ajaxchimp.min.js') }}"></script>
        <script src="{{ asset('/myland/js/mail-script.js') }}"></script>
        <script src="{{ asset('/myland/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js') }}"></script>
        <script src="{{ asset('/myland/vendors/nice-select/js/jquery.nice-select.js') }}"></script>
        <script src="{{ asset('/myland/js/mail-script.js') }}"></script>
        <script src="{{ asset('/myland/js/stellar.js') }}"></script>
        <script src="{{ asset('/myland/vendors/lightbox/simpleLightbox.min.js') }}"></script>
        <script src="{{ asset('/myland/js/custom.js') }}"></script>
    </body>
</html>