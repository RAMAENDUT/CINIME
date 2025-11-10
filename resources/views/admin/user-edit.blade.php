@extends('admin.layout')

@section('content')
<h1 class="h3 mb-4 text-gray-800">Edit User</h1>
<form action="{{ route('admin.users.update', $user->id) }}" method="POST">
	@csrf
	@method('PUT')
	<div class="row">
		@include('components.form-input',[
		'name'=>'username',
		'classes'=>'col-6',
		'label'=>'Username',
		'required'=>'required',
		'type'=>'text',
		'value'=>old('username',$user->username),
		])
		@include('components.form-input',[
		'name'=>'email',
		'classes'=>'col-6',
		'label'=>'Email',
		'required'=>'required',
		'type'=>'email',
		'value'=>old('email',$user->email),
		])
	</div>

	<div class="row">
		@include('components.form-input',[
		'name'=>'first_name',
		'classes'=>'col-6',
		'label'=>'First Name',
		'required'=>'required',
		'type'=>'text',
		'value'=>old('first_name',$user->first_name),
		])
		@include('components.form-input',[
		'name'=>'last_name',
		'classes'=>'col-6',
		'label'=>'Last Name',
		'required'=>'',
		'type'=>'text',
		'value'=>old('last_name',$user->last_name),
		])
	</div>

	<div class="row">
		@include('components.form-select',[
		'name'=>'role_id',
		'label'=>'Role',
		'classes'=>'col-6',
		'options'=>$roles,
		'required'=>'required',
		'selected'=> old('role_id',$user->role_id),
		])
		@include('components.form-input',[
		'name'=>'password',
		'classes'=>'col-6',
		'label'=>'Password (leave blank to keep)',
		'required'=>'',
		'type'=>'password',
		])
	</div>

	<div class="row justify-content-end">
		<input class="btn btn-success m-2" type="submit" value="Save">
	</div>
</form>
@include('components.flash-message')
@endsection
