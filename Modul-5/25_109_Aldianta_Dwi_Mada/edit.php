<?php
include 'koneksi.php';
$id = $_GET['id'];
$data = mysqli_query($koneksi, "SELECT * FROM supplier WHERE id = '$id'");
$row = mysqli_fetch_assoc($data);

if (isset($_POST['update'])) {
    $nama   = $_POST['nama'];
    $telp   = $_POST['telp'];
    $alamat = $_POST['alamat'];

    $query = mysqli_query($koneksi, "UPDATE supplier SET nama='$nama', telp='$telp', alamat='$alamat' WHERE id='$id'");
    if ($query) {
        header("Location: index.php");
    } else {
        echo "Gagal mengupdate!";
    }
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Edit Supplier</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        input, textarea { width: 100%; padding: 8px; margin: 5px 0 15px 0; box-sizing: border-box; }
        button { background: #5cb85c; color: white; border: none; padding: 8px 15px; cursor: pointer; }
        .batal { background: #d9534f; color: white; padding: 8px 15px; text-decoration: none; display: inline-block; }
    </style>
</head>
<body>

    <h3>Edit Data Master Supplier</h3>
    <form action="" method="POST">
        <label>Nama</label>
        <input type="text" name="nama" value="<?php echo htmlspecialchars($row['nama']); ?>" required>

        <label>Telp</label>
        <input type="text" name="telp" value="<?php echo htmlspecialchars($row['telp']); ?>" required>

        <label>Alamat</label>
        <textarea name="alamat" rows="3" required><?php echo htmlspecialchars($row['alamat']); ?></textarea>

        <button type="submit" name="update">Update</button>
        <a href="index.php" class="batal">Batal</a>
    </form>

</body>
</html>