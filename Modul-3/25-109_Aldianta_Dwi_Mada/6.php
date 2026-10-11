<?php
$arr_push = array("A");
echo "Array awal: (\"A\")<br>";
array_push($arr_push, "B");
echo "Hasil array_push: " . $arr_push[0] . " " . $arr_push[1] . "<br><br>";

$arr1 = array("A", "B");
$arr2 = array("C");
echo "Array awal: (\"A\", \"B\") digabung dengan (\"C\")<br>";
$merged = array_merge($arr1, $arr2);
echo "Hasil array_merge: " . $merged[0] . " " . $merged[1] . " " . $merged[2] . "<br><br>";

$assoc = array("x" => 1, "y" => 2);
echo "Array awal: (\"x\"=>1, \"y\"=>2)<br>";
$vals = array_values($assoc);
echo "Hasil array_values: " . $vals[0] . " " . $vals[1] . "<br><br>";

$search_arr = array("A", "B", "C");
echo "Mencari \"B\" pada array: (\"A\", \"B\", \"C\")<br>";
$index = array_search("B", $search_arr);
echo "Hasil array_search: " . $index . "<br><br>";

$filter_arr = array(0, 1, false, 2, "", 3, "array");
echo "Array awal: (0, 1, false, 2, \"\", 3, \"array\")<br>";
$filtered = array_filter($filter_arr);
echo "Hasil array_filter: ";
foreach ($filtered as $val) {
    echo $val . " ";
}
echo "<br><br>";

$num_arr = array(3, 1, 2);
echo "Array awal: (3, 1, 2)<br>";

$sort_arr = $num_arr;
sort($sort_arr);
echo "Hasil sort: " . $sort_arr[0] . " " . $sort_arr[1] . " " . $sort_arr[2] . "<br>";

$rsort_arr = $num_arr;
rsort($rsort_arr);
echo "Hasil rsort: " . $rsort_arr[0] . " " . $rsort_arr[1] . " " . $rsort_arr[2] . "<br><br>";

$assoc_sort = array("Peter" => "35", "Ben" => "37", "Joe" => "43");
echo "Array awal: (\"Peter\"=>35, \"Ben\"=>37, \"Joe\"=>43)<br>";

$asort_arr = $assoc_sort;
asort($asort_arr);
echo "Hasil asort: ";
$first = true;
foreach ($asort_arr as $k => $v) {
    if (!$first) echo ", ";
    echo "$k=>$v";
    $first = false;
}
echo "<br>";

$ksort_arr = $assoc_sort;
ksort($ksort_arr);
echo "Hasil ksort: ";
$first = true;
foreach ($ksort_arr as $k => $v) {
    if (!$first) echo ", ";
    echo "$k=>$v";
    $first = false;
}
echo "<br>";

$arsort_arr = $assoc_sort;
arsort($arsort_arr);
echo "Hasil arsort: ";
$first = true;
foreach ($arsort_arr as $k => $v) {
    if (!$first) echo ", ";
    echo "$k=>$v";
    $first = false;
}
echo "<br>";

$krsort_arr = $assoc_sort;
krsort($krsort_arr);
echo "Hasil krsort: ";
$first = true;
foreach ($krsort_arr as $k => $v) {
    if (!$first) echo ", ";
    echo "$k=>$v";
    $first = false;
}
?>