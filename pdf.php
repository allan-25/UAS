<center>
	<h3>Data Relawan Covid 19 Wilayah Provinsi DKI Jakarta<br>
	Per <?php
$tanggal= mktime(date("m"),date("d"),date("Y"));
echo "Tanggal : <b>".date("d-M-Y", $tanggal)."</b> ";
date_default_timezone_set('Asia/Jakarta');
$jam=date("H:i:s");
echo "| Pukul : <b>". $jam." "."</b>";

?> . 
</h3>
	
<table border="1">
	<thead>
		<tr>
			<th>No</th>
			<th>Nama Lengkap</th>
			<th>Alamat Rumah</th>
			<th>Provinsi</th>
			<th>Email</th>
			<th>No. Hp</th>
			<th>Keahlian</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<?php 
			include 'koneksi.php';
		$no = 1;
		$query = mysqli_query($db, "SELECT * FROM relawan JOIN prov ON relawan.id = prov.id_prov") or die(mysqli_error($db));
		while ($data = mysqli_fetch_assoc($query)) {
			
		 ?>
			<td><?php echo $no?></td>
			<td><?php echo $data['nama'];?></td>
			<td><?php echo $data['alamat'];?></td>
			<td><?php echo $data['prov'];?></td>
			<td><?php echo $data['email'];?></td>
			<td><?php echo $data['hp'];?></td>
			<td><?php echo $data['ahli'];?></td>
		</tr>
		<?php 
		$no++;
	}
	?>
	</tbody>
</table>
	<script>
		window.print();
	</script>