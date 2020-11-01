@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Participants</div>

                <div class="card-body">

                    <div class="row" style="margin-bottom: 20px;">
                        <div class="col-3">
                            <input type="text" class="form-control" id="name" placeholder="Name" onkeyup="getFilteredParticipants()">
                        </div>
                        <div class="col-3">
                            <input type="text" class="form-control" id="locality" placeholder="Locality" onkeyup="getFilteredParticipants()">
                        </div>
                    </div>

                    <div id="result">
                    <!-- <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Age</th>
                            <th scope="col">Profession</th>
                            <th scope="col">Locality</th> 
                            <th scope="col">No. of guests</th> 
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($participants as $key => $value)
                            <tr>
                                <th scope="row">{{$key + 1}}</th>
                                <td>{{$value->name}}</td>
                                <td>{{$value->age}}</td>
                                <td>{{$value->profession}}</td>
                                <td>{{$value->locality}}</td>
                                <td>{{$value->no_of_guests}}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table> -->
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
