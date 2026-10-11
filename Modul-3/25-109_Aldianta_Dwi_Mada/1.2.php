<?php
$fruits = array("Avocado", "Blueberry", "Cherry", "Durian", "Elderberry", "Fig", "Grape", "Honeydew");

unset($fruits[1]);
echo "data Blueberry dihapus<br>";

echo 'fruits = (';
$first = true;
foreach ($fruits as $fruit) {
    if (!$first) {
        echo ', ';
    }
    echo '"' . $fruit . '"';
    $first = false;
}
echo ')<br>';

$max = end($fruits);
echo "nilai dengan indeks tertinggi: " . $max;
?>