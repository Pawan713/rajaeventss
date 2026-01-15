<?php

namespace App\Http\Controllers\fronted;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Employee;
use App\Service;
use App\State;
use App\City;

class WelcomeController extends Controller
{
    protected $cities;

    public function __construct()
    {
        // This runs before any method is called
        $this->cities = City::where('status', 1)->get();
    }

    public function index()
    {
        // $cities=City::where('status',1)->get();
        return view('fronted.welcome')->with('cities',$this->cities);
    }


// About Us of WebSite
    public function aboutUs()
    {
        return view('fronted.about_us')->with('cities',$this->cities);
    }


// Contact Us of WebSite
    public function contactUs()
    {
        return view('fronted.contact_us')->with('cities',$this->cities);
    }
// All Services
    public function services()
    {
        return view('fronted.services')->with('cities',$this->cities);
    }
// Services Details
    public function serviceDetils()
    {
        $employees=Employee::get();
        $services=Service::orderBy('id','DESC')->get();
        $cities=City::get();
        // return $cities;
        return view('fronted.services_details')->with('employees',$employees)->with('cities',$cities)->with('services',$services)->with('cities',$this->cities);
    }



// All Photo Gallery
     public function gallery()
    {
        return view('fronted.gallery')->with('cities',$this->cities);
    }


// Testimonials
    public function testimonials()
    {
        return view('fronted.testimonials')->with('cities',$this->cities);
    }

// Employeer List
    public function employeerlist($slug)
    {
        
         $city_id=City::select('id')->where('name',strtolower($slug))->first();
        //   return $city_id->id;
         $employees=Employee::where('city',$city_id->id)->get();

        //  foreach($employees as $employe)
        //  {
        //     echo $employe->getFirstMediaUrl('photo');
        //  }
        //  echo "<pre>";
        //  return $employees[3]->photo->url;
        return view('fronted.employeer_list')->with('cities',$this->cities)->with('employees',$employees);
    }

    public function search(Request $request)
    {
        $results = Employee::query()
            ->when($request->name, function ($query, $name) {
                return $query->where('name', 'LIKE', "%{$name}%");
            })
            ->when($request->service, function ($query, $service) {
                return $query->where('service_type', $service);
            })
            ->when($request->city, function ($query, $city) {
                return $query->where('city_name', $city);
            })
            ->get();

        // Return a partial view or HTML string
        return view('fronted.search_results', compact('results'))->render();
    }


}
