<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Movie;
use App\Models\Show;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class AdminMovieController extends Controller
{
    public function dashboard()
    {
        $shows = Show::with('movie')->get();
        $num_of_shows = $shows->count();
        $num_of_movies = Movie::all()->count();
        $num_of_customers = User::all()->where('role.code', \App\Models\Role::CUSTOMER_CODE)->count();
        $upcoming_shows_count = $shows->whereBetween('date', [Carbon::now(), Carbon::now()->addWeek()])->count();

        return view('admin.dashboard', [
            'numOfShows' => $num_of_shows,
            'numOfMovies' => $num_of_movies,
            'numOfCustomers' => $num_of_customers,
            'showsNextWeek' => $upcoming_shows_count,
        ]);
    }

    public function index()
    {
        return view('admin.movie-index', [
            'movies' => Movie::with('category')->get(),
        ]);
    }

    public function create()
    {
        return view('admin.movie-create', [
            'categories' => Category::select(['id', 'title'])->get()->pluck('title', 'id'),
        ]);
    }

    public function store(Request $request)
    {
        $attr = $request->validate([
            'title' => ['required', 'min:1', 'max:255'],
            'category_id' => ['required', Rule::exists(Category::class, 'id')],
            'language' => ['required', 'min:1', 'max:255', 'alpha'],
            'rating' => ['required', 'numeric', 'lte:5', 'gte:0'],
            'release_date' => ['required', 'date'],
            'director' => ['required', 'min:1', 'max:255'],
            'maturity_rating' => ['required', 'min:1', 'max:255', 'alpha_dash'],
            'running_time' => ['required', 'date_format:H:i'],
            'storyline' => ['required', 'min:1', 'string'],
            'image' => ['required', 'image'],
        ]);

        $attr['image'] = request()->file('image')->store('posters');

        $movie = Movie::create($attr);

    return redirect()->route('admin.movies.edit', $movie)->with([
            'flash' => 'success',
            'message' => 'Added movie successfully',
        ]);
    }

    public function show(Movie $movie)
    {
        return view('admin.movie-show', [
            'movie' => $movie,
        ]);
    }

    public function edit(Movie $movie)
    {
        return view('admin.movie-edit', [
            'movie' => $movie,
            'categories' => Category::select(['id', 'title'])->get()->pluck('title', 'id'),
        ]);
    }

    public function update(Request $request, Movie $movie)
    {
        $attr = $request->validate([
            'title' => ['required', 'min:1', 'max:255'],
            'category_id' => ['required', Rule::exists(Category::class, 'id')],
            'language' => ['required', 'min:1', 'max:255', 'alpha'],
            'rating' => ['required', 'numeric', 'lte:5', 'gte:0'],
            'release_date' => ['required', 'date'],
            'director' => ['required', 'min:1', 'max:255'],
            'maturity_rating' => ['required', 'min:1', 'max:255', 'alpha_dash'],
            'running_time' => ['required', 'date_format:H:i'],
            'storyline' => ['required', 'min:1', 'string'],
            'image' => ['image'],
        ]);

        if (isset($attr['image'])) {
            $attr['image'] = request()->file('image')->store('posters');
        }

        $movie->update($attr);

    return redirect()->route('admin.movies.edit', $movie)->with([
            'flash' => 'success',
            'message' => 'Updated Movie Successfully',
        ]);
    }

    public function destroy(Movie $movie)
    {
        $movie->delete();

    return redirect()->route('admin.movies.index')->with([
            'flash' => 'success',
            'message' => 'Successfully deleted movie.',
        ]);
    }
}
