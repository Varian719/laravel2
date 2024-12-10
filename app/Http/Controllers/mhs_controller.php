<?php

namespace App\Http\Controllers;
use App\Http\Controllers\mhs_controller;
use App\Models\mhs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class mhs_controller extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $mhs = mhs::paginate(10); // Paginate results to handle large datasets
        return response()->json([
            'status' => true,
            'message' => 'Data Berhasil Ditemukan',
            'data' => $mhs
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
        'nama'=> 'required|string|max:255',
        'nim'=> 'required|string|max:255',
        'kelas'=> 'required|string|max:255',
        'prodi'=> 'required|string|max:255',
        'fotomhs'=> ''
        ],[
        'nama.required'=> 'data field is required',
        'nama.string'=>'data must be a string',
        'nama.max'=> 'data should not be longer than 255 characters',
        'nim.required'=> 'data field is required',
        'nim.string'=>'data must be a string',
        'nim.max'=> 'data should not be longer than 255 characters',
        'kelas.required'=> 'data field is required',
        'kelas.string'=>'data must be a string',
        'kelas.max'=> 'data should not be longer than 255 characters',
        'prodi.required'=> 'data field is required',
        'prodi.string'=>'data must be a string',
        'prodi.max'=> 'data should not be longer than 255 characters',
        ]);
        if($validator->fails()){
            return response()->json([
            'status' => false,
            'message' => 'Validasi error',
            'errors'=> $validator->errors()
            ],422);
        }
        $mhs = mhs::create($request->only(['nama','nim','kelas','prodi','fotomhs']));
        
        return response()->json([
            'status'=>true,
            'message'=>'Data berhasil diinput',
            'data'=>$mhs,
        ],201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        try{
            $mhs = mhs::findOrFail($id);
            return response()->json([
                'status'=>true,
                'message'=>'Data Berhasil ditemukan',
                'data'=>$mhs
            ]);
        }catch(ModelNotFoundException $e){
            return response()->json([
                'status'=>false,
                'message'=>'data tidak ditemukan'
            ]);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
      
        $validator = Validator::make($request->all(),[
            'nama'=> 'required|string|max:255',
            'nim'=> 'required|string|max:255',
            'kelas'=> 'required|string|max:255',
            'prodi'=> 'required|string|max:255',
            'fotomhs'=> ''
            ],[
            'nama.required'=> 'data field is required',
            'nama.string'=>'data must be a string',
            'nama.max'=> 'data should not be longer than 255 characters',
            'nim.required'=> 'data field is required',
            'nim.string'=>'data must be a string',
            'nim.max'=> 'data should not be longer than 255 characters',
            'kelas.required'=> 'data field is required',
            'kelas.string'=>'data must be a string',
            'kelas.max'=> 'data should not be longer than 255 characters',
            'prodi.required'=> 'data field is required',
            'prodi.string'=>'data must be a string',
            'prodi.max'=> 'data should not be longer than 255 characters',
            ]);
            if($validator->fails()){
                return response()->json([
                'status' => false,
                'message' => 'Validasi error',
                'errors'=> $validator->errors()
                ],422);
            }
            try{
                $mhs = mhs::findorFail($id);
                
                $mhs->update($request->only(['nama','nim','kelas','prodi','fotomhs']));

                return response()->json([
                'status'=>true,
                'message'=>'data updated',
                'data'=>$mhs
                ],200);
            }catch(ModelNotFoundException $e){
                return response()->json([
                    'status'=>false,
                    'message'=>'data not found'
                ],404);
            }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try{
            $mhs = mhs::findOrFail($id);
            $mhs ->delete();

            return response()->json([
                'status'=>true,
                'message'=>'data deleted'
            ],204);
        }catch(ModelNotFoundExecption $e){
            return response()->json([
                'status'=>false,
                'message'=>'data not found'
            ],404);
        }
    }
}
