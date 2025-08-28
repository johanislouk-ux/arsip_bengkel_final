-- Buat database baru
CREATE DATABASE IF NOT EXISTS arsip_bengkel;
USE arsip_bengkel;

-- Tabel user login
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin','guru','kepsek') DEFAULT 'guru',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tambahkan admin default (password: admin123)
INSERT INTO users (username, password, role) VALUES
('admin', MD5('admin123'), 'admin');

-- Tabel data alat bengkel
CREATE TABLE alat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_alat VARCHAR(100) NOT NULL,
    kode_alat VARCHAR(50) UNIQUE NOT NULL,
    kondisi ENUM('Baik','Rusak Ringan','Rusak Berat') DEFAULT 'Baik',
    jumlah INT DEFAULT 0,
    lokasi VARCHAR(100),
    keterangan TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel catatan pemakaian alat
CREATE TABLE catatan_pemakaian (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_alat INT NOT NULL,
    peminjam VARCHAR(100),
    tanggal_pinjam DATE,
    tanggal_kembali DATE,
    kondisi_saat_kembali ENUM('Baik','Rusak Ringan','Rusak Berat') DEFAULT 'Baik',
    FOREIGN KEY (id_alat) REFERENCES alat(id) ON DELETE CASCADE
);

-- Tabel laporan kegiatan bengkel
CREATE TABLE laporan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(150) NOT NULL,
    isi TEXT NOT NULL,
    dibuat_oleh VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Data contoh alat
INSERT INTO alat (nama_alat, kode_alat, kondisi, jumlah, lokasi, keterangan) VALUES
('Obeng +', 'ALAT-001', 'Baik', 20, 'Bengkel 1', 'Digunakan untuk praktik instalasi'),
('Tang Kombinasi', 'ALAT-002', 'Baik', 15, 'Bengkel 2', 'Peralatan umum jaringan'),
('Kabel LAN Tester', 'ALAT-003', 'Baik', 5, 'Gudang', 'Untuk menguji kabel UTP');

-- Data contoh laporan
INSERT INTO laporan (judul, isi, dibuat_oleh) VALUES
('Pemeliharaan Rutin Bengkel', 'Dilaksanakan pemeriksaan kondisi alat dan kebersihan bengkel.', 'admin');
