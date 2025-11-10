<?php

namespace App\Http\Controllers;

use App\Mail\WelcomeMail;
use App\Models\Role;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use Illuminate\Validation\Rule;
use Illuminate\Validation\Rules\Password;

class UserController extends Controller
{
    public function store()
    {
        $roles = Role::all()->collect();
        $fields = request()->validate([
            'first_name' => ['required', 'max:255'],
            'last_name' => ['max:255'],
            'username' => ['required', 'max:255', 'unique:App\\Models\\User,username'],
            'email' => ['required', 'email', 'max:255', 'unique:App\\Models\\User,email'],
            'password' => ['required', 'confirmed', Password::min(8)->letters()->numbers()],
        ]);

        // new users register as customers by default
        $fields['role_id'] = $roles->where('code', Role::CUSTOMER_CODE)->first()['id'];

        $user = User::create($fields);

        // send mail to user
        Mail::to($user)->send(new WelcomeMail($user));

        // sign the user in
        auth()->login($user);

        // redirect user to home with flash message
        return redirect('/')->with([
            'flash' => 'success',
            'message' => 'Your account has been successfully created!',
        ]);
    }

    public function dashboard()
    {
        // get the user with the reservations and shows for each reservation
        $user = User::with(['reservations.show.movie'])->find(auth()->id());
        return view('user.user-dashboard', [
            'user' => $user,
            'reservations' => $user->reservations->where('show.date', '>', Carbon::now()),
        ]);
    }
}
