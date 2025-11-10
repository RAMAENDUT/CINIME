@extends('manager.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Edit Room</h1>
<form action="{{ route('manager.rooms.update', $room->id) }}" method="POST">
    @csrf
    @method('PUT')
    <div class="row">
        @include('components.form-input',[
        'name'=>'size',
        'classes'=>'col-6',
        'label'=>'Size (number of seats)',
        'required'=>'required',
        'type'=>'number',
        'value'=>old('size',$room->size),
        'extra_attr'=>'min=1',
        ])
    </div>

    <div class="row justify-content-end">
        <input class="btn btn-success m-2" type="submit" value="Save">
        <a class="btn btn-danger m-2" href="{{ route('manager.rooms.index') }}">Cancel</a>
    </div>
</form>
@include('components.flash-message')
@endsection
