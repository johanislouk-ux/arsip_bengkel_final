<?php
require 'config.php';
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Dashboard Arsip Bengkel</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">📁 Arsip Bengkel</a>
      <div>
        <span class="text-white me-3">Halo, <?= $_SESSION['username']; ?></span>
        <a href="logout.php" class="btn btn-light btn-sm">Logout</a>
      </div>
    </div>
  </nav>
  <div class="container mt-4">
    <h3>Dashboard Arsip Bengkel</h3>
    <p>Selamat datang di sistem manajemen arsip bengkel SMK.</p>

    <div class="row g-3">
      <div class="col-md-4">
        <div class="card shadow-sm p-3">
          <h5>📦 Data Alat & Bahan</h5>
          <p>Kelola data peralatan, bahan, dan stok.</p>
          <a href="alat.php" class="btn btn-primary btn-sm">Kelola</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card shadow-sm p-3">
          <h5>📝 Catatan Kegiatan</h5>
          <p>Input & arsip catatan praktik siswa.</p>
          <a href="catatan.php" class="btn btn-primary btn-sm">Kelola</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card shadow-sm p-3">
          <h5>📊 Laporan</h5>
          <p>Cetak & export laporan kegiatan.</p>
          <a href="laporan.php" class="btn btn-primary btn-sm">Kelola</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>