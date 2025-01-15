<?php
include("../koneksi.php");

$Nama = $_POST["nama"];
$Deskripsi = $_POST["deskripsi"];
$Harga = $_POST["harga"];

$namafoto = $_FILES["foto"]["name"];
$lokasi_tmp = $_FILES["foto"]["tmp_name"];
$nama_baru = time(). $namafoto;


$query =  mysqli_query($koneksi, "insert into tbproduk values (null, '$Nama', '$Harga', '$Deskripsi', '$nama_baru', 'puding')");

move_uploaded_file($lokasi_tmp, "foto/$nama_baru");

?>