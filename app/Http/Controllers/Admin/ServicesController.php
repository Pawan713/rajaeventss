<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyServiceRequest;
use App\Http\Requests\StoreServiceRequest;
use App\Http\Requests\UpdateServiceRequest;
use App\Service;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class ServicesController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $query = Service::query()->select(sprintf('%s.*', (new Service)->table));
            $table = Datatables::of($query);

            $table->addColumn('placeholder', '&nbsp;');
            $table->addColumn('actions', '&nbsp;');

            $table->editColumn('actions', function ($row) {
                $viewGate      = 'service_show';
                $editGate      = 'service_edit';
                $deleteGate    = 'service_delete';
                $crudRoutePart = 'services';

                return view('partials.datatablesActions', compact(
                    'viewGate',
                    'editGate',
                    'deleteGate',
                    'crudRoutePart',
                    'row'
                ));
            });

            $table->editColumn('id', function ($row) {
                return $row->id ? $row->id : "";
            });
            $table->editColumn('name', function ($row) {
                return $row->name ? $row->name : "";
            });
            $table->editColumn('price', function ($row) {
                return $row->price ? $row->price : "";
            });

            $table->rawColumns(['actions', 'placeholder']);

            return $table->make(true);
        }

        return view('admin.services.index');
    }

    public function create()
    {
        abort_if(Gate::denies('service_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.services.create');
    }

    public function store(StoreServiceRequest $request)
    {


    //    dd($request);

            $request->validate([
                'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048'
            ]);

            $image = $request->file('image');
            $extension = $request->file('image')->getClientOriginalExtension();
            $dir = public_path() .'/uploads/admin/services/';
            $filename = $request->name.'_'.uniqid() . '_' . time() . '.' . $extension;
            $var = $request->file('image')->move($dir, $filename);

            // // Resize and save
            // $resizedImage = Image::make($image->getRealPath());
            // $resizedImage->resize(800, 600, function ($constraint) {
            //     $constraint->aspectRatio();
            //     $constraint->upsize();
            // })->save(storage_path('app/public/images/' . $filename));



        $service = Service::create([
           "name" => $request->name,
           'description'=>$request->description,
           'price'=>$request->price,
           'status'=>$request->status,
           'description'=>$request->description,
            'image'=>$filename,
       ] );


        // $flight = Flight::create([
        //     'name' => $request->name,
        // ]);


        return redirect()->route('admin.services.index');
    }

    public function edit(Service $service)
    {
        abort_if(Gate::denies('service_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.services.edit', compact('service'));
    }

    public function update(UpdateServiceRequest $request, Service $service)
    {

        // dd($request);
        // die();
        // $service->update($request->all());

            $image = $request->file('image');
            $extension = $request->file('image')->getClientOriginalExtension();
            $dir = public_path() .'/uploads/admin/services/';
            $filename = $request->name.'_'.uniqid() . '_' . time() . '.' . $extension;
            $var = $request->file('image')->move($dir, $filename);

            $service = Service::update([
           "name" => $request->name,
           'description'=>$request->description,
           'price'=>$request->price,
           'status'=>$request->status,
           'description'=>$request->description,
            'image'=>$filename,
       ] );

        return redirect()->route('admin.services.index');
    }

    public function show(Service $service)
    {
        abort_if(Gate::denies('service_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.services.show', compact('service'));
    }

    public function destroy(Service $service)
    {
        abort_if(Gate::denies('service_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $service->delete();

        return back();
    }

    public function massDestroy(MassDestroyServiceRequest $request)
    {
        Service::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
