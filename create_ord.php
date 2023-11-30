<?php
require_once  'connect.php';

$scpu = $_POST['scpu'];
$gpu = $_POST['sgpu'];
$board = $_POST['sboard'];
$cooler = $_POST['scool'];
$casepc = $_POST['scase'];
$supply = $_POST['spower'];
$ram = $_POST['sram'];
$ssd = $_POST['ssd'];
print_r($_POST );

mysqli_query($connect,  "INSERT INTO `createt` (`cpu`, `gpu`, `board`, `cooler`, `pccase`, `powers`, `ram`, `sd`) VALUES ('$scpu', '$gpu', '$board', '$cooler', '$casepc', '$supply', '$ram', '$ssd')");

header('Location: site.php');