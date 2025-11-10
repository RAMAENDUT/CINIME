langkah penginstalan CINIME(dalam keadaan xampp atau laragon sudah menyala):

1. composer install
2. cp .env.example .env(hanya bisa di powershell untuk kasus saya)
3. php artisan key:generate
4. masuk ke phpmyadmin, lalu buat database bernama laravel
5. import laravel sql yang ada di database/db baru/laravel.sql
6. php artisan storage:link
7. php artisan serve
