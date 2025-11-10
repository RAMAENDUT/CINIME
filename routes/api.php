<?php
use App\Http\Controllers\ManagerMovieController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// API routes for movies
Route::get('/movies', [ManagerMovieController::class, 'index']);
Route::post('/movies', [ManagerMovieController::class, 'store']);
Route::get('/movies/{movie}', [ManagerMovieController::class, 'edit']);
Route::put('/movies/{movie}', [ManagerMovieController::class, 'update']);
Route::delete('/movies/{movie}', [ManagerMovieController::class, 'destroy']);
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});