@extends('admin.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Edit Show</h1>
<form action="{{ route('admin.shows.update', $show->id) }}"
	  method="POST">
	@csrf
	@method('PUT')

	<div class="row">
		@include('components.form-select',[
		'name'=>'movie_id',
		'label'=>'Anime',
		'classes'=>'col-6',
		'options'=>$movies,
		'required'=>'required',
		'selected'=>old('movie_id',$show->movie_id),
		])
		<div class="col-6">
			<label for="room_id">Room (cannot change after created)</label>
			<input class="form-control" readonly value="{{ $show->room->size }}" />
		</div>
	</div>

	<div class="row">
		@include('components.form-date',[
		'name'=>'date',
		'label'=>'Tanggal',
		'classes'=>'col-6',
		'required'=>'required',
		'min'=>\Carbon\Carbon::today()->addDay()->toDateString(),
		'value'=>old('date',$show->date),
		])
		@include('components.form-input',[
		'name'=>'price',
		'type'=>'number',
		'label'=>'Harga',
		'classes'=>'col-6',
		'required'=>'required',
		'extra_attr'=> 'step=.01',
		'value'=>old('price',$show->price),
		])
	</div>

	<div class="row">
		@include('components.form-time',[
		'name'=>'start_time',
		'label'=>'Waktu Main',
		'classes'=>'col-6',
		'value'=>old('start_time',$show->start_time?->format('H:i')),
		'required'=>'required',
		])
		@include('components.form-time',[
		'name'=>'end_time',
		'label'=>'Waktu Selesai',
		'classes'=>'col-6',
		'value'=>old('end_time',$show->end_time?->format('H:i')),
		'required'=>'required',
		])
	</div>

	<div class="row justify-content-end">
		<input class="btn btn-success m-2"
			   type="submit"
			   value="Save">
		<a class="btn btn-danger m-2" href="{{ route('shows.index') }}">Cancel</a>
	</div>
</form>
@include('components.flash-message')
@endsection
