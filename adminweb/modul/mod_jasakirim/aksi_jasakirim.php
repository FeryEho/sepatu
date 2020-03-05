<?php
session_start();
if(!session_is_registered("namauser")){
  echo"<meta http-equiv=\"refresh\" content=\"0; URL=../../index.php\" />";
}else{

include "../../../config/koneksi.php";

$module=$_GET['module'];
$act=$_GET['act'];
$folderimg="../../../images/logo_jasa/"; // Tempat upload file gambar

// Hapus Perusahaan Pengiriman
if ($module==$module AND $act=='hapus'){
      mysql_query("DELETE FROM shop_pengiriman WHERE id_perusahaan='$_GET[id]'");           
      
  header('location:../../media.php?module=jasakirim'.$module);
}

// Input Perusahaan Pengiriman
elseif ($module=="$module" AND $act=='input'){
  
  mysql_query("INSERT INTO shop_pengiriman(nama_perusahaan) 
                            VALUES('$_POST[nama_perusahaan]')");      
 
  header('location:../../media.php?module=jasakirim'.$module);
}

// Update Perusahaan Pengiriman
elseif ($module=="$module" AND $act=='update'){
  mysql_query("UPDATE shop_pengiriman SET nama_perusahaan = '$_POST[nama_perusahaan]' WHERE id_perusahaan = '$_POST[id]'");
  
  header('location:../../media.php?module=jasakirim'.$module);
}

}
?>
