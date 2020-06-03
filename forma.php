<html>
<head>
</head>
<body>
<?php
$link = mysqli_connect('localhost', 'root', '', 'university');
if(isset($_POST["submitButton"])){
    require_once("config.php");
    require_once("includes/classes/Account.php");
    $account=new Account($con);

    $email = $_POST["email"];
    $email_true = $_POST["email_true"];
    $password = $_POST["password"];
    $password_true = $_POST["password_true"];
    if ($email != $email_true) {
    echo "<center>Emails does not match!</center>";}
    elseif ($password != $password_true) {
    echo "<center>Passwords does not match!</center>";}
    else { echo "<center>Success!</center>";
    $sql = mysqli_query($link, "INSERT INTO `users` (`firstname`, `lastname`, `username`, `email`, `password`) VALUES ('{$_POST['firstname']}', '{$_POST['lastname']}', '{$_POST['username']}', '{$_POST['email']}', '{$_POST['password']}')");
    }
    }
?>
  <form method="POST">
      <center><input type="text" name="firstname" placeholder="firstname" required><br>

      <input type="text" name="lastname" placeholder="lastname" required><br>

      <input type="text" name="username" placeholder="username" required><br>
    
      <input type="email" name="email" placeholder="email" required><br>

      <input type="email" name="email_true" placeholder="confirm email" required><br>

      <input type="password" name="password" placeholder="password" required><br>

      <input type="password" name="password_true" placeholder="confirm password" required><br>
 
    <input type="submit" name="submitButton" value="SUBMIT"></center> 
  
  </form> 
  <center><a href="http://localhost:8080/university/forma1.php">Already have an account? Sign in here!</a></center>
</body>
</html>