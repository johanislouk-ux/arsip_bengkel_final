# 📦 Arsip Bengkel

Aplikasi **Inventaris & Arsip Bengkel** berbasis **PHP + MySQL**.  
Dibuat untuk membantu pencatatan inventaris, login pengguna, serta manajemen data bengkel.

---

## 🚀 Fitur Utama
- Login & Logout pengguna  
- Manajemen data inventaris  
- Penyimpanan arsip berbasis database  
- Tampilan sederhana (HTML, CSS, PHP)  

---

## 📂 Struktur Folder
```
.
├── index.php          # Halaman utama
├── login.php          # Login user
├── logout.php         # Logout user
├── config.php         # Konfigurasi database
├── create_admin.php   # Membuat admin awal
├── install.sql        # Struktur database
├── css/
│   └── style.css
└── .htaccess
```

---

## ⚙️ Cara Install di Localhost
1. Ekstrak file project ke folder `htdocs` (jika pakai XAMPP).  
2. Buat database baru lewat **phpMyAdmin**.  
3. Import file `install.sql`.  
4. Edit `config.php` → sesuaikan `host`, `username`, `password`, `database`.  
5. Jalankan di browser:  
   ```
   http://localhost/arsip_bengkel/
   ```

---

## 🌐 Cara Deploy ke 000webhost
1. Buat akun di [000webhost](https://www.000webhost.com/).  
2. Buat project baru → pilih nama domain gratis.  
3. Upload semua file project ke folder `public_html`.  
4. Buat database baru → catat host, username, password, dan nama database.  
5. Import `install.sql` lewat phpMyAdmin.  
6. Edit `config.php` sesuai informasi database dari hosting.  
7. Buka aplikasi lewat domain kamu, contoh:  
   ```
   https://arsipbengkel.000webhostapp.com
   ```

---

## 🔑 Akun Default
Lihat `create_admin.php` atau `install.sql` untuk mengetahui akun admin awal.  
Biasanya formatnya:
```
username: admin
password: admin
```

---

## 🛠️ Teknologi
- PHP 7+  
- MySQL/MariaDB  
- HTML, CSS  

---

## 📜 Lisensi
Project ini bebas digunakan untuk pembelajaran & pengembangan lebih lanjut. 🚀  
