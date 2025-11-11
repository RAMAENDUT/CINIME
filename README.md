langkah penginstalan CINIME
1. composer install
2. cp .env.example .env(hanya bisa di powershell untuk kasus saya)
3. php artisan key:generate
4. Jika kamu menggunakan XAMPP atau Laragon:
    - masuk ke phpmyadmin, lalu buat database bernama CINIME
    - import CINIME.sql di database/db baru

   Jika kamu menggunakan SSMS:
    - Sesuaikan env nya dengan server mu
    - buat database sesuai dengan database yang kamu isi di env
    - open CINIME.sql database/db baru \
    - pilih database yang digunakan lalu execute
5. php artisan storage:link
6. php artisan serve
