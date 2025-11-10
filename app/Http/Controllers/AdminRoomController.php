<?php

namespace App\Http\Controllers;

use App\Models\Room;
use Illuminate\Http\Request;

class AdminRoomController extends Controller
{
    public function index()
    {
        return view('admin.room-index', [
            'rooms' => Room::all(),
        ]);
    }

    public function create()
    {
        return view('admin.room-create');
    }

    public function store(Request $request)
    {
        $attr = $request->validate([
            'size' => ['required', 'integer', 'min:1'],
        ]);

        Room::create($attr);

    return redirect()->route('admin.rooms.index')->with([
            'flash' => 'success',
            'message' => 'Room created successfully',
        ]);
    }

    public function edit(Room $room)
    {
        return view('admin.room-edit', [
            'room' => $room,
        ]);
    }

    public function update(Request $request, Room $room)
    {
        $attr = $request->validate([
            'size' => ['required', 'integer', 'min:1'],
        ]);

        $room->update($attr);

    return redirect()->route('admin.rooms.index')->with([
            'flash' => 'success',
            'message' => 'Room updated successfully',
        ]);
    }

    public function destroy(Room $room)
    {
        $room->delete();

    return redirect()->route('admin.rooms.index')->with([
            'flash' => 'success',
            'message' => 'Room deleted successfully',
        ]);
    }
}
