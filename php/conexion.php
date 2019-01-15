<?php

  $Host = 'localhost';
  $User = 'root';
  $Password = '';
  $BdName = 'catalogue_reventon';

  $conn = mysqli_connect ($Host, $User, $Password, $BdName);

  if (!$conn) {
    die('Erro En La conexión: ' . mysqli_connect_error());
  }

  mysqli_set_charset($conn,"utf8");

?>
