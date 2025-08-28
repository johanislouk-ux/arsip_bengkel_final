<?php
// Script sekali jalan untuk membuat admin baru
// Jalankan via browser atau CLI, lalu HAPUS file ini demi keamanan

require_once "config.php";

$username = "admin2";
$password = "admin456"; // ganti sesuai kebutuhan
$role = "admin";

$hash = md5($password);

$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$sql = "INSERT INTO users (username, password, role) VALUES ('$username', '$hash', '$role')";

if ($conn->query($sql) === TRUE) {
    echo "✅ User admin baru berhasil dibuat: $username / $password";
} else {
    echo "❌ Gagal membuat user: " . $conn->error;
}

$conn->close();
?>
