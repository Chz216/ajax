<?php

include_once 'conexion.php';

if (isset($_POST['navbar'])) {
  $parent = 0;
  $navbar_query = "SELECT * FROM navbar WHERE Parent_navbar = $parent";
  $run_query = mysqli_query($conn,$navbar_query);
  echo "
  <ul class='navbar-nav'>
  ";
  if (mysqli_num_rows($run_query) > 0) {
    while ($row = mysqli_fetch_array($run_query)) {
      $cid = $row["Id_navbar"];
      $navbar = $row ["Nom_navbar"];
      $href = $row["Page_navbar"];
      echo
      "
      <li class='nav-item'>
       <a class='nav-link' cid='$cid' href='$href'>$navbar</a>
      <li>
        ";
    }
    echo "
    </ul>";
  }
}

if (isset($_POST['get_products'])) {
  $qwe = $_POST['products'];
  $sql = "SELECT * FROM productos WHERE Id_navbar = '$qwe'";
  $run_query = mysqli_query($conn,$sql);
  echo "<ul>";
  if (mysqli_num_rows($run_query) > 0) {
    while($row = mysqli_fetch_array($run_query)) {
      $name_p = $row["nom"];
      echo "
      <li><span>$name_p</span></li>
      ";
    }
    echo "</ul>";
  }
}


?>
