<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- skkrip fungsi validasi form -->
<script language="javascript">
  function validasi(form){
    if (form.username.value == ""){
      alert("Anda belum mengisikan Username.");
      form.username.focus();
      return (false);
    }     
    if (form.password.value == ""){
      alert("Anda belum mengisikan Password.");
      form.password.focus();
      return (false);
    }
    if (form.kpassword.value == ""){
      alert("Anda belum mengisikan Konfirmasi Password.");
      form.kpassword.focus();
      return (false);
    }     
    if (form.nama.value == ""){
      alert("Anda belum mengisikan Nama Lengkap.");
      form.nama.focus();
      return (false);
    }
    if (form.email.value == ""){
      alert("Anda belum mengisikan E-mail.");
      form.email.focus();
      return (false);
    }
    var x = form.telp.value;
    var regex = /^[a-zA-Z]+$/;
    if (x == ""){
      alert("Anda belum mengisikan No. Telp.");
      form.telp.focus();
      return (false);
    }
    if (x.match(regex)){
      alert("No. Telp. Hanya boleh berisi angka");
      form.telp.focus();
      return (false);
    } 
    return(true);
  }
</script>

<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="description"  content=""/>
<meta name="keywords" content=""/>
<meta name="robots" content="ALL,FOLLOW"/>
<meta name="Author" content="AIT"/>
<meta http-equiv="imagetoolbar" content="no"/>
<title>Pendaftaran User Baru</title>
<link rel="shortcut icon" type="image/x-icon" href="adminweb/images/favicon.ico">


<script type="text/javascript" src="adminweb/js/jquery.js"></script>
<script type="text/javascript" src="adminweb/js/cufon.js"></script>
<script type="text/javascript" src="adminweb/js/Geometr231_Hv_BT_400.font.js"></script>
<script type="text/javascript" src="adminweb/js/script.js"></script>
<link rel="stylesheet" href="css/reset.css" type="text/css"/>
<link rel="stylesheet" href="css/screen.css" type="text/css"/>

</head>

<body class="no-side">

<div class="login-box">
<div class="login-border">
<div class="login-style">
	<div class="login-header">
		<div class="logo clear">
			<div align="right"><span class="title"><img src="images/logo5.png" alt="" width="250px" class="picture" style="padding:0px 0px 0px 155px;"/></span></div>
		</div>
	</div>
<form name="daftar" action="cek_new_user.php" method="POST" onSubmit="return validasi(this)">
		
		<div class="login-inside">
			<div class="login-data">
			  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><div align="center">
                    <table cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="30">Username</td>
                        <td> :
                          <input type="text" name="username"  class="text" /></td>
                      </tr>
                      <tr>
                        <td height="30">Password</td>
                        <td> :
                          <input type="password" class="text" name="password" /></td>
                      </tr>
                      <tr>
                        <td height="30">Konfirmasi Password</td>
                        <td> :
                          <input type="password" class="text" name="kpassword" /></td>
                      </tr>
                      <tr>
                        <td height="30">Nama Lengkap</td>
                        <td> :
                          <input type="text" class="text" name="nama" /></td>
                      </tr>
                      <tr>
                        <td height="30">Email</td>
                        <td> :
                          <input type="text" class="text" name="email" /></td>
                      </tr>
                      <tr>
                        <td height="30">No. Telp</td>
                        <td> :
                          <input type="text" class="text" name="telp" /></td>
                      </tr>
                      
                      <tr>
                        <td colspan="2"><div align="right">
                          <input name="submit"  class="submit" type="submit" value="DAFTAR" />
                        </div></td>
                      </tr>
                    </table>
                  </div></td>
                </tr>
              </table>

			</div>
		</div>
	  </form>
<?php $e_user = "echo <script>alert('Username sudah digunakan. Silakan gunakan username lain.');</script>";
?>
</div>
</div>
</div>
</div>
</body>

<meta http-equiv="content-type" content="text/html;charset=UTF-8">
</html>
