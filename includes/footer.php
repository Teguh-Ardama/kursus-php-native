<?php
if (isset($_POST['emailsubscibe'])) {
  $subscriberemail = $_POST['subscriberemail'];
  $sql = "SELECT * FROM subscribers WHERE email_sub='$subscriberemail'";
  $query = mysqli_query($koneksidb, $sql);
  if (mysqli_num_rows($query) > 0) {
    echo "<script>alert('Already Subscribed.');</script>";
  } else {
    $sql1 = "INSERT INTO subscribers(email_sub) VALUES('$subscriberemail')";
    $lastInsertId = mysqli_query($koneksidb, $sql1);
    if ($lastInsertId) {
      echo "<script>alert('Subscribed successfully.');</script>";
    } else {
      echo "<script>alert('Something went wrong. Please try again');</script>";
    }
  }
}
?>

<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-md-6">
          <h6>Tentang Kami</h6>
          <ul>


            <li><a href="page.php?type=aboutus">Tentang Kami</a></li>
            <li><a href="page.php?type=faqs">FAQs</a></li>
            <li><a href="admin/">Admin Login</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="copy-right">&copy;2022 Website Pendaftaran Kursus Universitas JEWEPE.</p>
        </div>
      </div>
    </div>
  </div>
</footer>