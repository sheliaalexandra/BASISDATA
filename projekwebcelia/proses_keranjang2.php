<?php

//ambil id product
$product_id = $_post['product_id'];

$user_id = $_SESSION['id'];

include "koneksi.php";

$querty = mysql_querty($koneksi, "insert into cart values (null, $user_id, now())");

?>