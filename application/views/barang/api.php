<?php

include("config.php");



$sql = "SELECT * FROM barang";
$result = array();
$query = mysqli_query($db, $sql);
 
while($row = mysqli_fetch_array($query)){
    array_push($result, array('id' => $row['id'],
    'kode_barang' => $row['kode_barang'],
    'nama_barang' => $row['nama_barang'],
    'harga_jual' => $row['harga_jual'],
    'stok' => $row['stok'],
    'satuan' => $row['satuan'],
    'image' => $row['image'],
));
}
echo json_encode(array("result" => $result));
?>



