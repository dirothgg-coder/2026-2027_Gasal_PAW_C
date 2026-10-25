<?php
require 'validate.inc';
$errors = array();

function validateNameErrors(&$errors, $field_list, $field_name)
{
    $pattern = "/^[a-zA-Z'-]+$/";
    if (!isset($field_list[$field_name]) || empty($field_list[$field_name]))
        $errors[$field_name] = 'required';
    else if (!preg_match($pattern, $field_list[$field_name]))
        $errors[$field_name] = 'invalid';
}

validateNameErrors($errors, $_POST, 'surname');

if ($errors) {
    echo 'Errors:<br/>';
    foreach ($errors as $field => $error) {
        echo "$field $error</br>";
    }
} else {
    echo 'Data OK!';
}
?>