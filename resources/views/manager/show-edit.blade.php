@extends('manager.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Edit Show</h1>
<form action="{{ route('manager.shows.update',$show) }}"
      method="POST">
    @method('PUT')
    @csrf

    <div class="row">
        @include('components.form-select',[
        'name'=>'movie_id',
        'label'=>'Anime',
        'classes'=>'col-6',
        'options'=>$movies,
        'required'=>'required',
        'selected'=> $show->movie_id,
        ])
        <div class="col-6">
            <label for="room_id">Room (cannot change after created)</label>
            <input class="form-control" readonly value="Room #{{ $show->room->id }} - {{ $show->room->size }} seats" />
        </div>
    </div>

    <div class="row">
        @include('components.form-date',[
        'name'=>'date',
        'label'=>'Tanggal',
        'classes'=>'col-6',
        'value'=>$show->date->toDateString(),
        'required'=>'required',
        'min'=>\Carbon\Carbon::today()->addDay()->toDateString(),
        ])
        @include('components.form-input',[
        'name'=>'price',
        'type'=>'number',
        'label'=>'Harga',
        'classes'=>'col-6',
        'value'=>$show->price,
        'required'=>'required',
        'extra_attr'=> 'step=.01'
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
        <input class="btn btn-warning m-2"
               type="reset">
        <input class="btn btn-success m-2"
               type="submit"
               value="Update">
</form>
@include('components.flash-message')
@endsection