    <!-- Footer Start -->
    <div class="container-fluid footer position-relative bg-dark text-white-50 py-5 wow fadeIn" data-wow-delay="0.2s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-6 pe-lg-5">
                    <a href="index.html" class="navbar-brand">
                        <h1 class="display-5 text-primary mb-0"><i class="bi bi-camera-reels"></i>RajaEvents</h1>
                    </a>
                    <p>हम हर प्रकार के इवेंट्स जैसे शादी,पूजा,सालगिरह, बर्थडे ,कॉलेज फंक्शन,अवार्ड फंक्शन एंड कॉर्पोरेट इवेंट्स के लिए उच्च एंड गुणवत्ता वाली विडियो शुटिंग और वृत्तिक फोटोग्राफी के सुबिधा प्रदान करते है | आपकी हर मुस्कान, हर पल और हर भवनों को हम कैमरे मे कैद करते है.</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-2"></i>Nawada,Bihar</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-2"></i>+9102806987</p>
                    <p><i class="fa fa-envelope me-2"></i>info@rajaevents.com</p>
                    <div class="d-flex justify-content-start mt-4">
                        <a class="btn btn-sm-square btn-primary me-3" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-sm-square btn-primary me-3" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-sm-square btn-primary me-3" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-sm-square btn-primary me-3" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-6 ps-lg-5">
                    <div class="row g-4">
                        <div class="col-sm-6">
                            <h5 class="text-primary mb-4">Quick Links</h5>
                            <a class="btn btn-link" href="{{route('aboutus')}}">About Us</a>
                            <a class="btn btn-link" href="{{route('contactus')}}">Contact Us</a>
                            <a class="btn btn-link" href="{{route('services')}}">Our Services</a>
                            <a class="btn btn-link" href="">Terms & Condition</a>
                        </div>
                        <div class="col-sm-6">
                            <h5 class="text-primary mb-4">Popular Links</h5>
                            <a class="btn btn-link" href="{{route('gallery')}}">Photo Gallery</a>
                            <a class="btn btn-link" href="{{route('testimonials')}}">Testimonial</a>
                            <a class="btn btn-link" href="">Our Services</a>
                            <a class="btn btn-link" href="{{route('login')}}">Login</a>
                        </div>
                        <div class="col-sm-12">
                            <h5 class="text-primary mb-4">Newsletter</h5>
                            <div class="position-relative w-100 mb-2">
                                <input class="form-control bg-secondary border-0 w-100 ps-4 pe-5" type="text"
                                    placeholder="Enter Your Email" style="height: 60px;">
                                <button type="button" class="btn shadow-none position-absolute top-0 end-0 mt-2 me-2"><i
                                        class="fa fa-paper-plane text-primary fs-4"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Copyright Start -->
    <div class="container-fluid bg-dark text-white border-top border-secondary py-4 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="border-bottom" href="#">RajaEvent Video & Photo Graphics</a>, All Right Reserved.
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                    <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                    <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                    Designed By <a class="border-bottom" href="#">Pawan Kumar</a>.
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright End -->
    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('fronted/lib/wow/wow.min.js')}}"></script>
    <script src="{{asset('fronted/lib/easing/easing.min.js')}}"></script>
    <script src="{{asset('fronted/lib/waypoints/waypoints.min.js')}}"></script>
    <script src="{{asset('fronted/lib/counterup/counterup.min.js')}}"></script>
    <script src="{{asset('fronted/lib/lightbox/js/lightbox.min.js')}}"></script>
    <script src="{{asset('fronted/lib/owlcarousel/owl.carousel.min.js')}}"></script>
    <!-- Template Javascript -->
    <script src="{{asset('fronted/js/main.js')}}"></script>








{{-- /// Search Bar --}}
<script>
        $(document).ready(function() {
            //  alert("name");
    function fetchResults() {
        let name = $('#search_name').val();
        let service = $('#search_service').val();
        let city = $('#search_city').val();
       

        $.ajax({
            url: "{{ route('search.data') }}",
            method: 'GET',
            data: { name: name, service: service, city: city },
            success: function(response) {
                $('#search-results').html(response);
                $('#city-load').hide();
            }
        });
    }

    // Trigger search on typing or changing dropdowns
    $('#search_name').on('keyup', fetchResults);
    $('#search_service, #search_city').on('change', fetchResults);
});
</script>

</body>

</html>