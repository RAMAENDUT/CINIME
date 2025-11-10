@extends('admin.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Add Show</h1>
<form action="{{ route('admin.shows.store') }}"
 	  method="POST">
	@csrf

	<div class="row">
		@include('components.form-select',[
		'name'=>'movie_id',
		'label'=>'Anime',
		'classes'=>'col-6',
		'options'=>$movies,
		'required'=>'required',
		'selected'=>old('movie_id'),
		])
		@include('components.form-select',[
		'name'=>'room_id',
		'label'=>'Kursi(gk bisa diedit kalau dah dibuat)',
		'classes'=>'col-6',
		'options'=>$rooms,
		'required'=>'required',
		'selected'=>old('room_id'),
		])
	</div>

	<div class="row">
		@include('components.form-date',[
		'name'=>'date',
		'label'=>'Tanggal',
		'classes'=>'col-6',
		'required'=>'required',
		'min'=>\Carbon\Carbon::today()->addDay()->toDateString(),
		'value'=>old('date'),
		])
		@include('components.form-input',[
		'name'=>'price',
		'type'=>'number',
		'label'=>'Harga',
		'classes'=>'col-6',
		'required'=>'required',
		'extra_attr'=> 'step=.01',
		'value'=>old('price'),
		])
	</div>

	<div class="row">
		@include('components.form-time',[
		'name'=>'start_time',
		'label'=>'Waktu Mulai',
		'classes'=>'col-6',
		'value'=>old('start_time'),
		'required'=>'required',
		])

		@include('components.form-time',[
		'name'=>'end_time',
		'label'=>'Waktu Selesai',
		'classes'=>'col-6',
		'value'=>old('end_time'),
		'required'=>'required',
		])
	</div>

	<div class="row justify-content-end">
		<input class="btn btn-success m-2"
			   type="submit"
			   value="Save">
			   <a class="btn btn-danger m-2" href="{{ route('admin.dashboard') }}">Cancel</a>
</form>
@include('components.flash-message')
@endsection
