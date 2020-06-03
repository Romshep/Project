<html>
<head>
</head>
<body>
<?php
$link = mysqli_connect('localhost', 'root', '', 'university');
if(isset($_POST["submitButton"])){
    require_once("config.php");

    $sql = mysqli_query($link, "INSERT INTO `curse` (`coursename`, `description`) VALUES ('{$_POST['coursename']}', '{$_POST['description']}')");
}
$sql = mysqli_query($link, 'SELECT `id`, `coursename`, `description` FROM `curse`');
while ($result = mysqli_fetch_array($sql)) {
  echo "<center>Name course: {$result['coursename']}<br>Description: {$result['description']}</center><br>";
}
?>
  <form method="POST">

<center><input type="text" name="coursename" placeholder="coursename" required><br>

      <input type="text" name="description" size="50" placeholder="description" required><br>
 
    <input type="submit" name="submitButton" value="Add"></center> 
  
  </form> 
</body>
</html>