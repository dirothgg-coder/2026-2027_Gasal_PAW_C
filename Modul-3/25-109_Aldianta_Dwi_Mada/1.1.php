<?php
$fruits = array("Avocado", "Blueberry", "Cherry");

$fruits[] = "Durian";
$fruits[] = "Elderberry";
$fruits[] = "Fig";
$fruits[] = "Grape";
$fruits[] = "Honeydew";

echo 'fruits = ("' . $fruits[0] . '"';
for ($i = 1; $i < count($fruits); $i++) {
    echo ', "' . $fruits[$i] . '"';
}
echo ')<br>';
$indeks = count($fruits) - 1;
echo "nilai dengan indeks tertinggi: " . $fruits[$indeks];
?>