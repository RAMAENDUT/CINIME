<?php

namespace App\Http\Controllers;

use App\Models\Room;
use Illuminate\Http\Request;

class ManagerRoomController extends Controller
{
    public function index()
    {
        return view('manager.room-index', [
            'rooms' => Room::all(),
        ]);
    }

    public function create()
    {
        return view('manager.room-create');
    }

    public function store(Request $request)
    {
        $attr = $request->validate([
            'size' => ['required', 'integer', 'min:1'],
        ]);

        Room::create($attr);

        return redirect()->route('manager.rooms.index')->with([
            'flash' => 'success',
            'message' => 'Room created successfully',
        ]);
    }

    public function edit(Room $room)
    {
        return view('manager.room-edit', [
            'room' => $room,
        ]);
    }

    public function update(Request $request, Room $room)
    {
        $attr = $request->validate([
            'size' => ['required', 'integer', 'min:1'],
        ]);

        $room->update($attr);

        return redirect()->route('manager.rooms.index')->with([
            'flash' => 'success',
            'message' => 'Room updated successfully',
        ]);
    }

    public function destroy(Room $room)
    {
        $room->delete();

        return redirect()->route('manager.rooms.index')->with([
            'flash' => 'success',
            'message' => 'Room deleted successfully',
        ]);
    }
}
