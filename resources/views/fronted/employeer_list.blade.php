@extends('fronted.layouts.main')
@section('content')
    <!-- Hero Start -->
    <div class="container-fluid bg-light page-header py-5 mb-5">
        <div class="container text-center py-5">
            <h1 class="display-1 animated slideInLeft">Our Experienced Specialists</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb justify-content-center animated slideInLeft mb-0">
                    <li class="breadcrumb-item"><a class="text-primary" href="{{ route('home') }}">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-primary" href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Team Members</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Hero End -->

    <div class="container">
        <div class="row">
            <div class="col-4"> <!-- Spans 6 of 12 columns (50%) -->
                <input type="text" id="search_name" placeholder="Search by name..." class="form-control">
            </div>
            <div class="col-4"> <!-- Spans 6 of 12 columns (50%) -->
                <select id="search_service" class="form-control">
                    <option value="">All Services</option>
                    <option value="photography">Photography</option>
                    <option value="catering">Catering</option>
                </select>
            </div>
            <div class="col-4"> <!-- Spans 6 of 12 columns (50%) -->
                <select id="search_city" class="form-control">
                    <option value="">All Cities</option>
                    <option value="new-york">New York</option>
                    <option value="london">London</option>
                </select>
            </div>
        </div>
    </div>




    <!-- Service Start -->
    <div class="container-fluid service py-5">
        {{-- 
    <div class="search-container">
    <input type="text" id="search_name" placeholder="Search by name..." class="form-control">
    
    <select id="search_service" class="form-control">
        <option value="">All Services</option>
        <option value="photography">Photography</option>
        <option value="catering">Catering</option>
    </select>

    <select id="search_city" class="form-control">
        <option value="">All Cities</option>
        <option value="new-york">New York</option>
        <option value="london">London</option>
    </select>
</div> --}}

        <div id="search-results"> </div>

        <div class="container" id="city-load">
            <!-- Team Start -->
            <div class="container-fluid overflow-hidden py-5">
                <div class="container">
                    <div class="text-center wow fadeIn" data-wow-delay="0.2s">
                        <h1 class="font-dancing-script text-primary">Team Members</h1>
                        <h1 class="mb-5">Our Experienced Specialists</h1>
                    </div>
                    <div class="row g-4 team">

                        @if ($employees)
                            @foreach ($employees as $employe)
                                <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s">
                                    <div class="team-item position-relative overflow-hidden">
                                        <img class="img-fluid w-100"
                                            src="{{ $employe->getFirstMediaUrl('photo') ?: asset('fronted/img/team-3.jpg') }}"
                                            alt="" style="width: 249px; height:339px">
                                        <div class="team-overlay">
                                            <p class="text-primary mb-1">Spa Specialist</p>
                                            <h4>{{ $employe->name }}</h4>
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

                                                {{-- <a class="btn btn-sm btn-primary text-uppercase my-2" href="">Read More <i
                                class="bi bi-arrow-right"></i></a> --}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <p><strong style="color: red">Not Found</strong></p>
                        @endif





                    </div>
                </div>
            </div>
            <!-- Team End -->



        </div>
    </div>
    <!-- Service End -->



@endsection
