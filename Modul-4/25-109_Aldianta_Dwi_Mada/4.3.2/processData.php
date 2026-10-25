<?php
$errors = array();

$surname = $_POST['surname'] ?? '';
$email = $_POST['email'] ?? '';
$address = $_POST['address'] ?? '';
$state = $_POST['state'] ?? '-1';
$sex = $_POST['sex'] ?? '';
$vegetarian = isset($_POST['vegetarian']) ? true : false;

if (isset($_POST['submit'])) {
    require 'validate.inc';
    validateName($errors, $_POST, 'surname');

    if ($errors) {
        echo '<h1>Invalid, correct the following errors:</h1>';
        foreach ($errors as $field => $error) {
            echo "$field: $error<br/>";
        }
        include 'form.inc';
    } else {
        echo 'Form submitted successfully with no errors!';
    }
} else {
    include 'form.inc';
}
?>