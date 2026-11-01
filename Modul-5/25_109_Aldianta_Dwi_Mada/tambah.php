<?php
include 'koneksi.php';
if (isset($_POST['simpan'])) {
    $nama   = $_POST['nama'];
    $telp   = $_POST['telp'];
    $alamat = $_POST['alamat'];

    $query = mysqli_query($koneksi, "INSERT INTO supplier (nama, telp, alamat) VALUES ('$nama', '$telp', '$alamat')");
    if ($query) {
        header("Location: index.php");
    } else {
        echo "Gagal menyimpan!";
    }
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Tambah Supplier</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        input, textarea { width: 100%; padding: 8px; margin: 5px 0 15px 0; box-sizing: border-box; }
        button { background: #5cb85c; color: white; border: none; padding: 8px 15px; cursor: pointer; }
        .batal { background: #d9534f; color: white; padding: 8px 15px; text-decoration: none; display: inline-block; }
    </style>
</head>
<body>

    <h3>Tambah Data Master Supplier Baru</h3>
    <form action="" method="POST">
        <label>Nama</label>
        <input type="text" name="nama" placeholder="Nama" required>

        <label>Telp</label>
        <input type="text" name="telp" placeholder="Telp" required>

        <label>Alamat</label>
        <textarea name="alamat" placeholder="Alamat" rows="3" required></textarea>

        <button type="submit" name="simpan">Simpan</button>
        <a href="index.php" class="batal">Batal</a>
    </form>

</body>
</html>