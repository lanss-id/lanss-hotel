<section class="banner_area">
    <div class="booking_table d_flex align-items-center">
        <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
        <div class="container">
            <div class="banner_content text-center">
                <h6>Selamat Datang Di</h6>
                <h2>Lanss Hotel</h2>
                <p>Kami menyediakan kamar kamar berkualitas dan terjaga<br> dengan fasilitas yang menakjubkan</p>
                <a href="{{ route('guest.reservasi.create')}}" class="btn theme_btn button_hover">Pesan Sekarang</a>
            </div>
        </div>
    </div>
    <div class="hotel_booking_area position">
        <div class="container">
            <div class="hotel_booking_table">
                <div class="col-md-3">
                    <h2>Booking<br> Sekarang</h2>
                </div>
                <div class="col-md-9">
                    <div class="boking_table">
                        <form method="get" action="{{ route('guest.reservasi.create')}}" class="bg-white py-4 px-2 form-pesan border shadow rounded">
                            <div class="row d-flex justify-content-around align-items-center">
                                <div class="col-lg-3">
                                    <label for="" class="ml-4">Tanggal Check In</label>
                                    <input type="date"  name="checkin" class="form-control rounded" placeholder="Check In">
                                </div>
                                <div class="col-lg-3">
                                    <label for="" class="ml-3">Tanggal Check Out</label>
                                    <input type="date" name="checkout" class="form-control rounded" placeholder="Check Out">
                                </div>
                                <div class="col-lg-2">
                                    <label for="">Jumlah Kamar</label>
                                    <input type="text" name="jumlah" class="form-control rounded" maxlength="3">
                                </div>
                                <div class="col-md-2">
                                    <button type="submit" class="btn btn-block btn-sgit">Pesan</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>