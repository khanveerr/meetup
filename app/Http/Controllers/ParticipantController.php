<?php

namespace App\Http\Controllers;

use App\Participant;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;

class ParticipantController extends Controller
{
    //
    public function index()
    {
        $participants = Participant::paginate(5);
        return response()->json(['status' => 'success', 'data' => $participants, 'message' => 'Participants fetched succussfully'], 200);
    }

    public function getAllParticipants(Request $request, $name = null, $locality = null) {

        if(\Auth::check()) {

            $participants = Participant::select('name','age','profession','locality','no_of_guests');

            if ($request->ajax()) {

                if($name != null) {
                    $participants = $participants->where('name','like','%'.$name.'%');
                }
                if($locality != null) {
                    $participants = $participants->where('locality','like','%'.$locality.'%');
                }

                $participants = $participants->paginate(10);
                return view('participants-filter', compact('participants'))->render();    

            }

            $participants = $participants->paginate(10);
            return view('participants', compact('participants'));    

        } else {
            return redirect('/login');
        }


    }
 
    public function show(Participant $participant)
    {
        if($participant->exists()) {
            return response()->json(['status' => 'success', 'data' => $participant, 'message' => 'Participant details fetched succussfully'], 200);
        } else {
            return response()->json(['status' => 'failure', 'data' => null, 'message' => 'Participant not found'], 400);
        }
    }

    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'age' => 'required|integer',
            'dob' => 'required|date',
            'profession' => ['required',Rule::in(['Employed', 'Student'])],
            'no_of_guests' => 'required|numeric|between:0,2'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'failure',
                'errors' => $validator->errors()
            ], 400);
        }

        $participant = Participant::create($request->all());
        return response()->json(['status' => 'success', 'data' => $participant, 'message' => 'Participant registered succussfully'], 201);
    }

    public function update(Request $request, Participant $participant)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'age' => 'required|integer',
            'dob' => 'required|date',
            'profession' => ['required',Rule::in(['Employed', 'Student'])],
            'no_of_guests' => 'required|numeric|between:0,2'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'failure',
                'errors' => $validator->errors()
            ], 400);
        }

        $participant->update($request->all());

        return response()->json(['status' => 'success', 'data' => $participant, 'message' => 'Participant updated succussfully'], 200);
    }

    public function delete(Participant $participant)
    {
        if($participant->exists()) {
            $participant->delete();
            return response()->json(['status' => 'success', 'data' => null, 'message' => 'Participant removed succussfully'], 200);
        } else {
            return response()->json(['status' => 'failure', 'data' => null, 'message' => 'Participant not found'], 400);
        }
    }
}
