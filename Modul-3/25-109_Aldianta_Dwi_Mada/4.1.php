<?php
$tinggi = array("Andy"=>"176", "Barry"=>"165", "Charlie"=>"170");

$tinggi["David"] = "180";
$tinggi["Ethan"] = "172";
$tinggi["Frank"] = "168";
$tinggi["George"] = "175";
$tinggi["Harry"] = "182";

echo 'tinggi = (';
$first = true;
foreach ($tinggi as $key => $val) {
    if (!$first) echo ', ';
    echo '"' . $key . '"=>"' . $val . '"';
    $first = false;
}
echo ')<br>';

foreach ($tinggi as $nama => $h) {
    echo $nama . " is " . $h . " cm tall.<br>";
}
?>