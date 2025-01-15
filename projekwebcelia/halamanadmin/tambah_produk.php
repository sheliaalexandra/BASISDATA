<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
<h1>Tambah Produk</h1>
   <form action="proses_tambah.php" method="post" enctype="multipart/form-data">  
    <div>
        Nama Produk:
        <input type="text" name="nama" />
    </div>
    <div>
        Deskripsi Produk:
        <input type="text" name="deskripsi" />
    </div>
    <div>
        Harga:
        <input type="number" name="harga" />
    </div>
    <div>
        Foto:
        <input type="file" name="foto" />
    </div>

    <input type="submit" name="simpan" value="simpan">
   </form>
</body>
</html>