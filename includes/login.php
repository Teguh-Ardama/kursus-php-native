<?php
if(isset($_POST['login']))
{
$email=$_POST['email'];
$npm=$_POST['npm'];
$sql = "SELECT * FROM member WHERE email='$email' AND npm='$npm'";
$query = mysqli_query($koneksidb,$sql);
$results = mysqli_fetch_array($query);
if(mysqli_num_rows($query)>0){
	$_SESSION['ulogin']=$_POST['email'];
	$_SESSION['fname']=$results['nama_user'];
	$currentpage=$_SERVER['REQUEST_URI'];
	echo "<script type='text/javascript'> document.location = 'paket.php'; </script>";
	} else{
		echo "<script>alert('Username atau Password Tidak Sesuai!');</script>";
	}
}

?>

<div class="modal fade" id="loginform">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Login</h3>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="login_wrap">
            <div class="col-md-12 col-sm-6">
              <form method="post">
                <div class="form-group">
                  <label class="col-sm-2 control-label">Username</label>
                  <input type="text" class="form-control" name="email" placeholder="Masukkan NPM">
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">Password</label>
                  <input type="npm" class="form-control" name="npm" placeholder="Masukkan NPM">
                </div>
                <div class="form-group checkbox">
                  <input type="checkbox" id="remember">            
                </div>
                <div class="form-group">
                  <input type="submit" name="login" value="Login" class="btn btn-block">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>