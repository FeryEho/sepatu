<?php
  session_start();
  // session_regenerate_id();
  // $_SESSION = array();
  session_unset();
  session_destroy();
  echo "<script>alert('Anda telah logout dari akun Anda.'); window.location.assign('index.php');</script>";
?>