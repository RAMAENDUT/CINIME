@extends('admin.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Add Room</h1>
<form action="{{ route('admin.rooms.store') }}" method="POST">
	@csrf
	<div class="row">
		@include('components.form-input',[
		'name'=>'size',
		'classes'=>'col-6',
		'label'=>'Size (number of seats)',
		'required'=>'required',
		'type'=>'number',
		'value'=>old('size'),
		'extra_attr'=>'min=1',
		])
	</div>

	<div class="row justify-content-end">
		<input class="btn btn-success m-2" type="submit" value="Save">
	</div>
</form>
@include('components.flash-message')
@endsection
