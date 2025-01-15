<html lang= "en">
</head>
<body>
<img src="asset/fotoProduct/<?= $data['foto'] ?>">
<h1><?= $data["nama"] ?></h1>
<h6><?= $data["harga"] ?></h6>
<p><?= $data["deskripsi"] ?></p>

<form action="proses_keranjang2.php" methode="post">
    <input type="hidden" name="product_id" value="<?=$id?>">
    <button type="submit">keranjang</button>
</form>
</body>
</html>