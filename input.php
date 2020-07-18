<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<h3>Penambahan Data Relawan</h3>
<hr>
<form method="POST">
<table>
	<tr>
		<td>Nama Relawan</td>
		<td>:</td>
		<td><input type="text" name="nama"></td>
	</tr>
	<tr>
		<td>Alamat</td>
		<td>:</td>
		<td><textarea name="alamat"></textarea></td>
	</tr>
	<tr>
		<td>Provinsi</td>
		<td>:</td>
		<td><select name="prov">
			<?php
   
                                 include 'koneksi.php';
                                
                                  $sql="select * from prov";

                                  $hasil=mysqli_query($db,$sql);
                                  
                                  while ($data = mysqli_fetch_array($hasil)) {
                                  
                                 ?>
                                  <option value="<?php echo $data['id_prov'];?>"><?php echo $data['prov'];?></option>
                                <?php 
                                }
                                ?>
                              
                  </select>
		</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>:</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>No Hp</td>
		<td>:</td>
		<td><input type="text" name="hp"></td>
	</tr>
	<tr>
		<td>Keahlian</td>
		<td>:</td>
		<td><input type="text" name="ahli"></td>
	</tr>
</table>
<input type="submit" name="simpan" value="Simpan">
</form>
<?php
include 'koneksi.php';
if (isset($_POST['simpan'])) {
	$nama = $_POST['nama'];
	$alamat = $_POST['alamat'];
	$prov = $_POST['prov'];
	$hp = $_POST['hp'];
	$email = $_POST['email'];
	$ahlian = $_POST['ahli'];

	$query = mysqli_query($db, "INSERT INTO relawan(nama,alamat,id_prov,email,hp,ahli) 
			VALUES ('$nama','$alamat','$prov','$email','$hp','$ahlian')");
	if ($query) {
		// jika berhasil tampilkan pesan berhasil insert data
		echo '<script LANGUAGE="JavaScript">
            alert(" Data Berhasil Tersimpan")
            window.location.href="relawan.php";
            </script>'; 
	} else {
		// jika gagal tampilkan pesan kesalahan
		echo '<script LANGUAGE="JavaScript">
            alert(" Data Gagal Tersimpan")
            window.location.href="relawan.php";
            </script>'; 
	}

}

?>
</body>
</html>