<div class="container">
    <h1 class="mt-0 mb-0">Reservasi Saya</h1>
    <hr>
    @if ($reservations->isNotEmpty())
        <table class="table table-responsive table-striped table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Movie</th>
                    <th scope="col">Waktu Mulai</th>
                    <th scope="col">Nomor Kursi</th>
                    <th scope="col">Harga</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            @foreach ($reservations as $reservation)
                <tr>
                    <th>{{ $reservation->show->movie->title }}</th>
                    <th>{{ $reservation->show->date->toDayDateTimeString() }}</th>
                    <td>{{ $reservation->seat_number }}</td>
                    <td>{{ $reservation->show->price . ' ' . config('app.currency') }}</td>
                    @if ($reservation->show->date > Carbon\Carbon::now()->add(3, 'hour'))
                        <td class="disabled">
                            <form action="{{ route('reservations.destroy', $reservation->id) }}" method="POST">
                                @csrf
                                @method('delete')
                                <input class="btn btn-second text-white" type="submit" value="Cancel Reservation">
                            </form>
                        </td>
                    @endif
                </tr>
            @endforeach
        </table>
    @else
        <div class="bg-light p-3 font-weight-bold rounded text-center">
            Kamu belum punya reservasi apa pun saat ini.
        </div>
    @endif
</div>
