<header class="header_area">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand font-weight-bold ml-3 display-1" href="{{route ('home')}}">Lanss</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse offset mr-3" id="navbarSupportedContent">
                <ul class="nav navbar-nav menu_nav ml-auto">
                    <x-nav-item-tamu label="Home" :link="route('home')"/>
                    <x-nav-item-tamu label="Fasilitas" :link="route('guest.fasilitas.index')"/>
                    <x-nav-item-tamu label="Kamar" :link="route('guest.kamar.index')"/>
                    <x-nav-item-tamu label="Reservasi" :link="route('guest.reservasi.create')"/> 
                    <x-nav-item-tamu label="Log-in" :link="route('admin.login')"/> 
                </ul>
            </div> 
        </nav>
    </div>
</header>