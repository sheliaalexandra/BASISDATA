<?php

include("koneksi.php");
session_start();
echo "<h1>LOGIN</h1>";

//mendaptkan data
$username = $_POST["username"];
$password = $_POST["password"];

//cari data berdasarkan usename
$querry =mysqli_query($koneksi, "select * from user where username='$username'");

$jumlah_data = mysqli_num_rows($querry);

//kalau datanya ada
if($jumlah_data > 0){
    //kalau password yang ada di tabel sama dengan password yang diinput
    $data = mysqli_fetch_array($querry);

    //if($data['password'] == $password){
        //bisa login
        if(password_verify($password,$data['password'])){ 
            $_SESSION['id'] = $data['id'];
            $_SESSION['username'] = $data['username'];
            $_SESSION['password'] = $data['password'];
            $_SESSION['role'] = $data['role'];

            if($_SESSION['role'] == "admin"){
                header("location:halaman_admin/loginadmin.php");
            }else{header("location:index.php");}
            

            
        // header("Location: index.php");
    }else{
        header("Location: login.php?error=username atau password salah");
        //echo "username / password salah";
    }
    }else{
    //kalau  datanya tidak ada
    header("Location: login.php");
}
    
?>