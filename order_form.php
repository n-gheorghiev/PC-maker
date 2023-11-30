<?php
require_once  'connect.php';

$contact_name = $_POST['contact_name'];
$contact_phone = $_POST['contact_phone'];
$contact_message = $_POST['contact_message'];
$id = $_POST['id'];
print_r($_POST );

mysqli_query($connect,  "INSERT INTO `customer` (`customer_id`, `contact_name`, `contact_phone`, `contact_message`, `id`) VALUES (NULL, '$contact_name', '$contact_phone', '$contact_message', '$id')");

header('Location: site.php');