<?php
session_start();
error_reporting(0);
include('includes/config.php');
$fname=$_POST['fullname'];
$email=$_POST['emailid']; 
$mobile=$_POST['mobileno'];
$alamat=$_POST['alamat'];
$npm = $_POST['npm'];
$kelas = $_POST['kelas'];
$conf = $_POST['conf'];
if($conf!=$npm){
	echo "<script>alert('Password tidak sama!');</script>";
	echo "<script type='text/javascript'> document.location = 'reg-users_tambah.php'; </script>";			
}else{
	$sqlcek = "SELECT email FROM member WHERE email='$email'";
	$querycek = mysqli_query($koneksidb,$sqlcek);
		if(mysqli_num_rows($querycek)>0){
			echo "<script>alert('Email sudah terdaftar, silahkan gunakan email lain!');</script>";
			echo "<script type='text/javascript'> document.location = 'reg-users_tambah.php'; </script>";			
		}else{
			$npm=$_POST['npm'];
			$sql1="INSERT INTO member(nama_user,email,telp,alamat,npm,kelas) VALUES('$fname','$email','$mobile','$alamat','$npm','$kelas')";
			$lastInsertId = mysqli_query($koneksidb, $sql1);
				if($lastInsertId){
					echo "<script>alert('Registrasi berhasil');</script>";
					echo "<script type='text/javascript'> document.location = 'reg-users.php'; </script>";
				}else {
					echo "<script>alert('Ops, terjadi kesalahan. Silahkan coba lagi.');</script>";
					echo "<script type='text/javascript'> document.location = 'reg-users_tambah.php'; </script>";
				}
		}	
}
?>