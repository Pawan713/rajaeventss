<?php

namespace App\Http\Controllers\fronted;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Employee;

class WelcomeController extends Controller
{
    

    public function index()
    {
        return view('fronted.welcome');
    }


// About Us of WebSite
    public function aboutUs()
    {
        return view('fronted.about_us');
    }


// Contact Us of WebSite
    public function contactUs()
    {
        return view('fronted.contact_us');
    }
// All Services
    public function services()
    {
        return view('fronted.services');
    }
// Services Details
    public function serviceDetils()
    {
        $employees=Employee::get();
        // return $employees;
        return view('fronted.services_details')->with('employees',$employees);
    }



// All Photo Gallery
     public function gallery()
    {
        return view('fronted.gallery');
    }


// Testimonials
    public function testimonials()
    {
        return view('fronted.testimonials');
    }



}
