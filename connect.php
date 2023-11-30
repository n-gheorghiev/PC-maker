<?php

$connect = mysqli_connect('localhost', 'root', '', 'pc_maker');
if (!$connect) {
    die('Error connect!');
}