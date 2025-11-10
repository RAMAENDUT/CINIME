@extends('admin.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Users</h1>
@if ($users->isNotEmpty())
<table class="showtime-table table table-striped table-hover rounded">
    <thead class="thead-dark">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Username</th>
            <th scope="col">Role</th>
            <th scope="col">Email</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
    </thead>
    @foreach ($users as $user)
    <tr>
        <th>{{ $user->id }}</th>
        <td>{{ $user->username }}</td>
        <td>{{ $user->role->title }}</td>
        <td>{{ $user->email }}</td>
        <td>
            <a href="{{ route('admin.users.edit', $user->id) }}" class="btn btn-warning text-white">Edit</a>
        </td>
        <td>
            @if (!$user->isAdmin())
            <form action="{{ route('admin.users.destroy',$user->id) }}" method="POST" onsubmit="return confirm('Yakin ingin menghapus user ini?');">
                @csrf
                @method('delete')
                <input class="btn btn-danger text-white" type="submit" value="Hapus">
            </form>
            @else
            <button class="btn btn-danger text-white disabled" type="button">Hapus</button>
            @endif
        </td>
    </tr>
    @endforeach
</table>
@else
<div class="bg-light p-3 font-weight-bold rounded text-center">
    Saat ini tidak ada users.
</div>
@endif

    <div class="mt-3">
    <a class="btn btn-success" href="{{ route('admin.users.create') }}">Add User</a>
</div>

@include('components.flash-message')
@endsection