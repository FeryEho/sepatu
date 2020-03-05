<?php
include "config/koneksi.php";
function antiinjection($data){
  $filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter_sql;
}

$username = antiinjection($_POST['username']);
$pass     = antiinjection(md5($_POST['password']));
$pass1    = antiinjection($_POST['kpassword']);
$nama     = antiinjection($_POST['nama']);
$email    = antiinjection($_POST['email']);
$telp     = antiinjection($_POST['telp']);
$cek_user = mysql_query("SELECT * FROM users WHERE username='$username'");
$ketemu   = mysql_num_rows($cek_user);

// Apabila username dan password ditemukan
if ($ketemu > 0){
  echo "<h2><center>Username sudah digunakan. Silakan gunakan username lain.</h2></center>";
?>
<!-- javascript redirect -->
  <script>
    setTimeout(function () {
      window.location.href= 'daftar_user.php';
    },3000);
  </script>

<?php
// input data user baru ke database
}else{
  // echo $username . " " . $pass . " " . $pass1 . " " . $nama . " " . $email . " " . $telp;
    mysql_query("INSERT INTO users (username,
                                  password1,
                                  password,
                                  nama_lengkap,
                                  email,
                                  no_telp)
                          VALUES ('$username',
                                  '$pass1',
                                  '$pass',
                                  '$nama',
                                  '$email',
                                  '$telp')"
              );
?>
<script>
  alert("Pendaftaran Berhasil. Akan kembali ke halaman utama.");
  window.location.href= 'index.php';
  </script>
<?php
}
?>
