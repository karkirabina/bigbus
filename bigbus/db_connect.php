<?php
$conn= new mysqli('localhost','root','','def');

if (!$conn)
{
    error_reporting(0);
    die("Could not connect to mysql".mysqli_error($conn));
}

?>