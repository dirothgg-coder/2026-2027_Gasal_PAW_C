<?php
include 'koneksi.php';
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Data Supplier</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background: #f2f2f2; }
        a { text-decoration: none; padding: 5px 10px; border-radius: 3px; color: white; }
        .btn { background: #5cb85c; float: right; margin-bottom: 10px; }
        .edit { background: #f0ad4e; }
        .hapus { background: #d9534f; border: none; cursor: pointer; }
    </style>
</head>
<body>

    <h2>Data Master Supplier</h2>
    <a href="tambah.php" class="btn">Tambah Data</a>
    
    <table>
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Telp</th>
            <th>Alamat</th>
            <th>Tindakan</th>
        </tr>
        <?php
        $no = 1;
        $query = mysqli_query($koneksi, "SELECT * FROM supplier");
        while ($row = mysqli_fetch_assoc($query)) {
        ?>
        <tr>
            <td><?php echo $no++; ?></td>
            <td><?php echo htmlspecialchars($row['nama']); ?></td>
            <td><?php echo htmlspecialchars($row['telp']); ?></td>
            <td><?php echo htmlspecialchars($row['alamat']); ?></td>
            <td>
                <a href="edit.php?id=<?php echo $row['id']; ?>" class="edit">Edit</a>
                <a href="hapus.php?id=<?php echo $row['id']; ?>" class="hapus" onclick="return confirm('Yakin ingin menghapus?');">Hapus</a>
            </td>
        </tr>
        <?php } ?>
    </table>

</body>
</html>