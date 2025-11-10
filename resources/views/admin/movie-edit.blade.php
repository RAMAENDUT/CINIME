@extends('admin.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Edit Movie</h1>
<form action="{{ route('admin.movies.update', $movie->id) }}"
	  method="POST" enctype="multipart/form-data">
	@csrf
	@method('PUT')
	<div class="row">
		@include('components.form-input',[
		'name'=>'image',
		'classes'=>'col-6',
		'label'=>'Poster ',
		'type'=>'file',
		])
		@include('components.form-input',[
		'name'=>'title',
		'classes'=>'col-6',
		'label'=>'Judul',
		'required'=>'required',
		'type'=>'text',
		'value'=>old('title',$movie->title),
		])
	</div>
	<div class="row">
		@include('components.form-select',[
		'name'=>'category_id',
		'label'=>'Genre',
		'classes'=>'col-6',
		'options'=>$categories,
		'required'=>'required',
		'selected'=> old('category_id',$movie->category_id),
		])
		@include('components.form-input',[
		'name'=>'language',
		'classes'=>'col-6',
		'label'=>'Bahasa',
		'required'=>'required',
		'type'=>'text',
		'value'=>old('language',$movie->language),
		])
	</div>

	<div class="row">
		@include('components.form-input',[
		'name'=>'rating',
		'classes'=>'col-6',
		'label'=>'Rating Skor',
		'required'=>'required',
		'type'=>'number',
		'value'=>old('rating',$movie->rating),
		'extra_attr'=>'min=0 max=5 step=0.01',
		])
		@include('components.form-date',[
		'name'=>'release_date',
		'label'=>'Tanggal Rilis',
		'classes'=>'col-6',
		'value'=>old('release_date',$movie->release_date?->toDateString()),
		'required'=>'required',
		])
	</div>

	<div class="row">
		@include('components.form-input',[
		'name'=>'director',
		'classes'=>'col-6',
		'label'=>'Director',
		'required'=>'required',
		'type'=>'text',
		'value'=>old('director',$movie->director),
		])
		@include('components.form-input',[
		'name'=>'maturity_rating',
		'classes'=>'col-6',
		'label'=>'Rating',
		'required'=>'required',
		'type'=>'text',
		'value'=>old('maturity_rating',$movie->maturity_rating),
		])
	</div>
	<div class="row">
		@include('components.form-time',[
		'name'=>'running_time',
		'label'=>'Durasi',
		'classes'=>'col-6',
		'value'=>old('running_time',$movie->running_time?->format('H:i')),
		'required'=>'required',
		])
		@include('components.form-textarea',[
		'name'=>'storyline',
		'classes'=>'col-6',
		'label'=>'Sinopsis',
		'required'=>'required',
		'value'=>old('storyline',$movie->storyline),
		])
	</div>

	<div class="row justify-content-end">
		<input class="btn btn-success m-2"
			   type="submit"
			   value="Save">
	</div>
</form>
@include('components.flash-message')
@endsection
