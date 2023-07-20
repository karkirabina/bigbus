
<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>

	<title>Bootstrap Front Page Example</title>
	<!-- Link to Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500&display=swap" rel="stylesheet">
    <!-- Font-awesome -->
    <script src="https://kit.fontawesome.com/d8cfbe84b9.js" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<style>body{ font: 14px sans-serif; }
        .wrapper{ width: 360px; padding: 20px; } 
        .button-group {
   display: flex;
   justify-content: center;
   align-items: center;
}

.register-button {
   font-size: 1rem;
   padding: 10px 20px;
   border-radius: 5px;
   border: none;
   background-color: #28a745;
   color: #fff;
   cursor: pointer;
   margin-right: 10px;
}

.login-button {
   font-size: 1rem;
   padding: 10px 20px;
   border-radius: 5px;
   border: none;
   background-color: #007bff;
   color: #fff;
   cursor: pointer;
}
        </style>
    <!-- CSS -->
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">EZY</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
        
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active">
					<a class="nav-link" href="#">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">About</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Services</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Contact</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="adminlogin.php">Admin Login</a>
				</li>
			</ul>
		</div>
        
    <!-- <div>
                <a href="login.php" class="login nav-item" data-bs-toggle="modal" data-bs-target="#loginmodal"><i class="fas fa-sign-in-alt" style="margin-right: 0.4rem;"></i>Login</a> </div> -->
                <!-- <div>
                <a href="register.php" class="login nav-item" data-bs-toggle="modal" data-bs-target="#loginModal"><i class="fas fa-sign-in-alt" style="margin-right: 0.4rem;"></i>register</a> </div> -->
	</nav>
    <!-- <div class="collapse navbar-collapse" id="navbarNav"> -->
    
    

	<!-- Jumbotron -->
	<div class="jumbotron">
		<h1>EZYTICKET</h1>
		<p>Welcome to Best Road Services. Login now to manage bus tickets and much more. OR, simply scroll down to check the Ticket status.</p>
		<a href="#" class="btn btn-primary btn-lg">Learn More</a>
	</div>
    <div class="pic">
    
		<img src="https://www.khojnu.com/wp-content/uploads/2018/07/hiace-micro-hire-in-nepal.jpg" alt="Example Picture" class="img-fluid">
	</div>
    <div class="button-group">
    <a href="register.php">
      <button class="register-button">Register</button>
   </a>
   <a href="login.php">
      <button class="login-button">Login</button>
   </a>
</div>

    </div>

	<!-- Main Content -->
	<div class="container">
		<h2>About Our Company</h2>
		<p>Nepal's largest company for bus ticket booking online, we offers an easy-to-use online platform, 7500+ bus operators to choose from, and plenty of offers on bus ticket booking to make road journeys super convenient for travellers. A leading platform for booking bus tickets, it has driven the country's bus booking journey over the past 2 years through thousands of cities and routes in Nepal. Striving to reach new heights regarding online bus reservations in nepal, it has become the perfect platform to have a smooth bus ticket booking experience.</p>
	</div>
		
</body>
</html>
	<!-- Link to Bootstrap JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
