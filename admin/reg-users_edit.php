<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0){
	header('location:index.php');
}else{
if(isset($_POST['update'])){
	$id=$_POST['id_user'];
	$fname=$_POST['nama_user'];
	$email=$_POST['email']; 
	$mobile=$_POST['mobileno'];
	$alamat=$_POST['alamat']; 
	$npm = $_POST['npm'];
	$kelas = $_POST['kelas'];
	$conf = $_POST['conf'];
	$sql="UPDATE member SET nama_user='$fname', email='$email', telp='$mobile', alamat='$alamat', npm='$npm', kelas='$kelas' WHERE id_user='$id'";
	$query	= mysqli_query($koneksidb, $sql);
	echo "<script type='text/javascript'>
			alert('Berhasil update data.');
			document.location = 'reg-users.php'; 
		</script>";
}
?>

<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title><?php echo $pagedesc;?></title>
	<link rel="shortcut icon" href="img/gunadarma.png">

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
	<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title">Ubah Data Mahasiswa</h2>
						<div class="row">
							<div class="col-md-10">
								<div class="panel panel-default">
									<div class="panel-heading"></div>
									<div class="panel-body">
										<form method="post" class="form-horizontal" enctype="multipart/form-data">
										<?php
										$id=$_GET['id'];
										$sql ="SELECT * FROM member WHERE id_user='$id'";
										$query = mysqli_query($koneksidb,$sql);
										$result = mysqli_fetch_array($query);
										?>
										<div class="form-group">
											<label class="col-sm-2 control-label">Nama Mahasiswa<span style="color:red">*</span></label>
											<div class="col-sm-4">
												<input type="text" name="nama_user" class="form-control" value="<?php echo $result['nama_user'];?>" required>
												<input type="hidden" name="id_user" class="form-control" value="<?php echo $result['id_user'];?>" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">Username<span style="color:red">*</span></label>
											<div class="col-sm-4">
												<input type="text" class="form-control" name="email" id="email" onBlur="checkAvailability()" placeholder="Masukkan Username berupa NPM" value="<?php echo $result['email'];?>" required="required">
												<span id="user-availability-status" style="font-size:12px;"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">Telepon<span style="color:red">*</span></label>
											<div class="col-sm-4">
												<input type="number" name="mobileno" class="form-control" value="<?php echo $result['telp'];?>" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">Alamat<span style="color:red">*</span></label>
											<div class="col-sm-4">
												<input type="text" class="form-control" name="alamat" placeholder="Alamat" value="<?php echo $result['alamat'];?>" required="required">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">NPM<span style="color:red">*</span></label>
											<div class="col-sm-4">
												<input type="text" class="form-control" name="npm" placeholder="NPM" value="<?php echo $result['npm'];?>" required="required">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">Kelas<span style="color:red">*</span></label>
											<div class="col-sm-4">
												<input type="text" class="form-control" name="kelas" placeholder="Kelas" value="<?php echo $result['kelas'];?>" required="required">
											</div>
										</div>
										<div class="hr-dashed"></div>											
											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-4">
													<button class="btn btn-primary" name="update" type="submit">Update</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							
						</div>
						
					</div>
				</div>
				
			
			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
<?php } ?>