<html>
<head>
</head>
<body>
<?php 
     $link = mysqli_connect('localhost', 'root', '', 'university');
     if(isset($_POST["submitButton"])){
	require_once("config.php");
     $username = $_POST["username"]; 
     $password = $_POST["password"];
     $sql = mysqli_query($link, 'SELECT `id`, `username`, `password` FROM `users`');
     while ($result = mysqli_fetch_array($sql)) {
		if (($result['username'] == $username) and ($result['password'] == $password)){
               header ('Location: forma3.php');
               exit();}}
     echo "Wrong login or password";
     }
?>
  <form method="POST">

      <center><input type="text" name="username" placeholder="username" required><br>

      <input type="password" name="password" placeholder="password" required><br>
 
      <input type="submit" name="submitButton" value="SUBMIT"></center> 
  
  </form> 
  <center><a href="http://localhost:8080/university/forma.php">Do you need an account? Sign up here!</a></center>
</body>
</html>