@extends('manager.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Movie Shows</h1>

@if ($shows->isNotEmpty())
<table class="showtime-table table table-striped table-hover rounded">
    <thead class="thead-dark">
        <tr>
            <th scope="col">Show ID</th>
            <th scope="col">Judul</th>
            <th scope="col">Tanggal</th>
            <th scope="col">Mulai</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
    </thead>
    @foreach ($shows as $show)
    <tr>
        <th>{{ $show->id }}</th>
        <th><a href="{{ route('manager.shows.show',$show->id) }}">{{ $show->movie->title }}</a>
        </th>
        <td>{{ $show->date }}</td>
        <td>{{ $show->start_time }}</td>
        <td>
            <a href="{{ route('manager.shows.edit',$show->id) }}"
               class="btn btn-warning text-white">Edit</a>
        </td>
        <td>
            <form action="{{ route('manager.shows.destroy',$show->id) }}"
                  method="POST">
                @csrf
                @method('DELETE')
                <input class="btn btn-danger text-white"
                       type="submit"
                       value="Hapus">
            </form>
        </td>
    </tr>
    @endforeach
</table>
@else
<div class="bg-light p-3 font-weight-bold rounded text-center">
    Belum dapet lisensi.
</div>
@endif
@include('components.flash-message')
@endsection