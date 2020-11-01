
<table class="table">
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
        @if(count($participants) > 0)
            @foreach($participants as $key => $value)
            <tr>
                <td scope="row">{{$key + 1}}</td>
                <td>{{$value->name}}</td>
                <td>{{$value->age}}</td>
                <td>{{$value->profession}}</td>
                <td>{{$value->locality}}</td>
                <td>{{$value->no_of_guests}}</td>
            </tr>
            @endforeach
            <tr>
                <td colspan="6">{{ $participants->links() }}</td>
            </tr>
        @else
        <tr>
            <td colspan="6">Sorry, no record found.</td>
        </tr>
        @endif
    </tbody>
</table>
