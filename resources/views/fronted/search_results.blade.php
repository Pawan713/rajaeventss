    <!-- Service Start -->
    <div class="container-fluid service py-5">    
        <div class="container">
            <!-- Team Start -->
                            <div class="container-fluid overflow-hidden py-5">
                                <div class="container">
                                    {{-- <div class="text-center wow fadeIn" data-wow-delay="0.2s">
                                        <h1 class="font-dancing-script text-primary">Team Members</h1>
                                        <h1 class="mb-5">Our Experienced Specialists</h1>
                                    </div> --}}
                                    <div class="row g-4 team">          

                                        @if(!empty($results))
                                            @foreach ($results as $employe)
                                                <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s">
                                            <div class="team-item position-relative overflow-hidden">
                                                <img class="img-fluid w-100" src="{{ $employee->photo->thumbnail ?? asset('fronted/img/team-3.jpg') }}" alt="">
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
