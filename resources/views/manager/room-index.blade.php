@extends('manager.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Rooms</h1>
@if ($rooms->isNotEmpty())
<table class="showtime-table table table-striped table-hover rounded">
    <thead class="thead-dark">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Size</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
    </thead>
    @foreach ($rooms as $room)
    <tr>
        <th>{{ $room->id }}</th>
        <td>{{ $room->size }}</td>
        <td>
            <a href="{{ route('manager.rooms.edit',$room->id) }}" class="btn btn-warning text-white">Edit</a>
        </td>
        <td>
            <form action="{{ route('manager.rooms.destroy',$room->id) }}" method="POST">
                @csrf
                @method('DELETE')
                <input class="btn btn-danger text-white" type="submit" value="Hapus">
            </form>
        </td>
    </tr>
    @endforeach
</table>
@else
<div class="bg-light p-3 font-weight-bold rounded text-center">
    Saat ini tidak ada rooms.
</div>
@endif
<div class="mt-3">
    <a class="btn btn-success" href="{{ route('manager.rooms.create') }}">Add Room</a>
</div>
@include('components.flash-message')
@endsection
