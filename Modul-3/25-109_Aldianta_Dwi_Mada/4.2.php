<?php
$berat = array("Andy"=>"70", "Barry"=>"65", "Charlie"=>"75");

echo 'berat = ("Andy"=>"70", "Barry"=>"65", "Charlie"=>"75")<br>';

$keys = array("Andy", "Barry", "Charlie");
for ($i = 0; $i < count($keys); $i++) {
    $nama = $keys[$i];
    echo $nama . " is " . $berat[$nama] . " kg.<br>";
}
?>