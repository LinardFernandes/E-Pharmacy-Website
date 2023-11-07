<?php 
session_start();
	include("config.php");
	include("functions.php");

	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$username = $_POST['username'];
		$password = $_POST['password'];

		if(!empty($username) && !empty($password) && !is_numeric($username))
		{
//read from database
      $sql = "SELECT * FROM `userinfo` WHERE username = '$username' limit 1";
			$result = mysqli_query($conn, $sql);
			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$user_data = mysqli_fetch_assoc($result);
					
					if($user_data['password'] === $password)
					{

						
						header("Location: index.php");
						die;
					}
				}
			}
			
			echo "wrong username or password!";
		}else
		{
			echo "wrong username or password!";
		}
	}

?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
	 <meta charset="utf-8">
  <meta name="viewport" conntent="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
  <nav class="navbar navbar-expand-md bg-dark navbar-dark">
     <a class="navbar-brand" href="#">  <img src="image/sui2.jpg"  style="max-width:10%;"  alt="..."/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-iconn"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav ml-auto">
          <li class="nav-item">
          <a class="nav-link " href="signup.php"><i class="fas fa-th-list mr-2"></i>Signup</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="login.php"><i class="fas fa-money-check-alt mr-2"></i>Login</a>
        </li>
      </ul>
    </div>
  </nav>

<div class="bg-info text-dark">
<div class="conntainer mt-3">
    <form action="/AthenaPhram/login.php" method="post">
    <div class="form-group">
      <p class="text-center">
        <label for="username">Username</label>
        <input type="text" name="username" class="form-conntrol" id="username" aria-describedby="emailHelp">
      </p>
    </div>
    <div class="form-group">
      <p class="text-center">
        <label for="password">Password</label>
        <input type="password" name="password" class="form-conntrol" id="password" aria-describedby="emailHelp"> 
      </p>
    </div>
    <p class="text-center">
    <button type="submit" class="btn btn-primary">Login</button>
  </p>
    </form>
    <p class="text-end">
    <a href="newpass.php" class="link-light">Forgot password</a>
  </p>
</div>
</div>

  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
