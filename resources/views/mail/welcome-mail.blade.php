@component('mail::message')
# Welcome to {{ config('app.name') }}

Hello {{ $user->first_name }},

Thanks for registering, your account has been created.<br>
You can now log in at the link below.<br>

@component('mail::button', ['url' => config('app.url').'/login'])
    Login
@endcomponent

Thanks, <br>
{{ config('app.name') }}
@endcomponent