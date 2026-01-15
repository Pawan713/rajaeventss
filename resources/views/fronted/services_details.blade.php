@extends('fronted.layouts.main')
@section('content')
    <!-- Hero Start -->
    <div class="container-fluid bg-light page-header py-5 mb-5">
        <div class="container text-center py-5">
            <h1 class="display-1 animated slideInLeft">Services</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb justify-content-center animated slideInLeft mb-0">
                    <li class="breadcrumb-item"><a class="text-primary" href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-primary" href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Service</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Hero End -->

    <!-- Service Start -->
    <div class="container-fluid service py-5">
        <div class="container">
            <div class="text-center wow fadeIn" data-wow-delay="0.1s">
                <h1 class="font-dancing-script text-primary">Our Services</h1>
                {{-- <h1 class="mb-5">Explore Our Services</h1> --}}
            </div>
            <div class="row g-4 g-md-0 text-center">
                <div class="col-md-12 col-lg-12">
                    <div class="service-item h-100 p-4 border-bottom border wow fadeIn" data-wow-delay="0.1s">
                        <img class="img-fluid" src="{{asset('fronted/img/Weddings.jpg')}}" alt="">
                        <h3 class="mb-3">Weddings</h3>
                        <p class="mb-3"><strong>Photo:</strong>

                            Traditional/Posed: Classic, directed shots (family, bridal party).

                            Photojournalistic/Documentary: Candid, story-telling moments.

                            Fine Art: Stylized, artistic, editorial (focus on light, composition).

                            Most Pros offer a blend of traditional and candid. </p>

                           <p class="mb-3"> <strong>Video:</strong>

                            Cinematic: Feels like a movie, uses music, dramatic angles, slow-motion.

                            Documentary: Raw, chronological, focuses on audio (vows, speeches).

                            Short-Form/Highlight Reel: 3-7 min film for social media.

                            Traditional: Full, long-form coverage of entire events. </p>
                        {{-- <a class="btn btn-sm btn-primary text-uppercase" href="">Read More <i
                                class="bi bi-arrow-right"></i></a> --}}



                            <div>
                                <input type="text" name="name" id="">
                                
                                <select name="" id="">
                                <option value="">Services</option>
                                 @if(!empty($services))
                                    @foreach($services as $services)
                                        <option value="{{$services->id}}">{{$services->name}}</option>
                                    @endforeach
                                @endif
                              </select>

                              <select name="" id="">
                                <option value="">Choose City</option>
                                @if(!empty($cities))
                                    @foreach($cities as $city)
                                        <option value="{{$city->id}}">{{$city->name}}</option>
                                    @endforeach
                                @endif
                              </select>

                              <input type="button" value="Search">

                            </div>




                         <!-- Team Start -->
                            <div class="container-fluid overflow-hidden py-5">
                                <div class="container">
                                    <div class="text-center wow fadeIn" data-wow-delay="0.2s">
                                        <h1 class="font-dancing-script text-primary">Team Members</h1>
                                        <h1 class="mb-5">Our Experienced Specialists</h1>
                                    </div>
                                    <div class="row g-4 team">
                                        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.1s">
                                            <div class="team-item position-relative overflow-hidden">
                                                <img class="img-fluid w-100" src="{{asset('fronted/img/team-1.jpg')}}" alt="">
                                                <div class="team-overlay">
                                                    <p class="text-primary mb-1">Video Grapher</p>
                                                    <h4>Lily Taylor</h4>
                                                    <div class="d-flex justify-content-center">
                                                        <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-instagram"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2" href="">
                                                            <i class="fab fa-linkedin-in"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.3s">
                                            <div class="team-item position-relative overflow-hidden">
                                                <img class="img-fluid w-100" src="{{asset('fronted/img/team-2.jpg')}}" alt="">
                                                <div class="team-overlay">
                                                    <p class="text-primary mb-1">Photo Designer</p>
                                                    <h4>Olivia Smith</h4>
                                                    <div class="d-flex justify-content-center">
                                                        <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-instagram"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2" href="">
                                                            <i class="fab fa-linkedin-in"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.5s">
                                            <div class="team-item position-relative overflow-hidden">
                                                <img class="img-fluid w-100" src="{{asset('fronted/img/team-3.jpg')}}" alt="">
                                                <div class="team-overlay">
                                                    <p class="text-primary mb-1">Beauty Specialist</p>
                                                    <h4>Ava Brown</h4>
                                                    <div class="d-flex justify-content-center">
                                                        <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-instagram"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2" href="">
                                                            <i class="fab fa-linkedin-in"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        @if($employees)
                                            @foreach ($employees as $employe)
                                                <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s">
                                            <div class="team-item position-relative overflow-hidden">
                                                <img class="img-fluid w-100" src="{{asset('fronted/img/team-4.jpg')}}" alt="">
                                                <div class="team-overlay">
                                                    <p class="text-primary mb-1">Spa Specialist</p>
                                                    <h4>{{$employe->name}}</h4>
                                                    <div class="d-flex justify-content-center">
                                                        {{-- <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2 me-3" href="">
                                                            <i class="fab fa-instagram"></i>
                                                        </a>
                                                        <a class="btn btn-dark btn-sm-square border-2" href="">
                                                            <i class="fab fa-linkedin-in"></i>
                                                        </a> --}}

                                                        <a class="btn btn-sm btn-primary text-uppercase my-2" href="">Read More <i
                                class="bi bi-arrow-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                                
                                            @endforeach
                                        @endif

                                        



                                    </div>
                                </div>
                            </div>
                            <!-- Team End -->

                                
                    </div>

                    
                </div>              
            </div>
        </div>
    </div>
    <!-- Service End -->
    @endsection

