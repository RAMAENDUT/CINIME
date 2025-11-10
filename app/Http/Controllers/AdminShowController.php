<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Models\Room;
use App\Models\Show;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class AdminShowController extends Controller
{
    public function index()
    {
        return view('admin.show-index', [
            'shows' => Show::with('movie')->get(),
        ]);
    }

    public function create()
    {
        return view('admin.show-create', [
            'movies' => Movie::select(['id', 'title'])->get()->pluck('title', 'id'),
            'rooms' => Room::all()->mapWithKeys(fn($r) => [$r->id => "Room {$r->id} - {$r->size} seats"]),
        ]);
    }

    public function store(Request $request)
    {
        $attr = $request->validate([
            'movie_id' => ['required', Rule::exists(Movie::class, 'id')],
            'room_id' => ['required', Rule::exists(Room::class, 'id')],
            'date' => ['required', 'date', 'after:today'],
            'price' => ['required', 'numeric', 'gte:0'],
            'start_time' => ['required', 'date_format:H:i'],
            'end_time' => ['required', 'after:start_time'],
        ]);

        $attr['remaining_seats'] = Room::find($attr['room_id'])->size;

        $show = Show::create($attr);

    return redirect()->route('admin.shows.edit', $show)->with([
            'flash' => 'success',
            'message' => 'Added show successfully',
        ]);
    }

    public function show(Show $show)
    {
        return view('admin.show-show', [
            'show' => $show,
        ]);
    }

    public function edit(Show $show)
    {
        return view('admin.show-edit', [
            'show' => $show,
            'movies' => Movie::select(['id', 'title'])->get()->pluck('title', 'id'),
            'rooms' => Room::all()->mapWithKeys(fn($r) => [$r->id => "Room {$r->id} - {$r->size} seats"]),
        ]);
    }

    public function update(Request $request, Show $show)
    {
        $attr = $request->validate([
            'movie_id' => ['required', Rule::exists(Movie::class, 'id')],
            'date' => ['required', 'date', 'after:today'],
            'price' => ['required', 'numeric', 'gte:0'],
            'start_time' => ['required', 'date_format:H:i'],
            'end_time' => ['required', 'after:start_time'],
        ]);

        unset($attr['room']);

        $show->update($attr);

    return redirect()->route('admin.shows.edit', $show)->with([
            'flash' => 'success',
            'message' => 'Updated Show Successfully',
        ]);
    }

    public function destroy(Show $show)
    {
        $show->delete();

    return redirect()->route('admin.shows.index')->with([
            'flash' => 'success',
            'message' => 'Successfully deleted show.',
        ]);
    }
}
