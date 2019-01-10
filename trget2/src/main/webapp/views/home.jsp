<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TRGET</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="/webjars/bootstrap/4.1.2/css/bootstrap.min.css"
	rel="stylesheet" />

</head>

<body data-gr-c-s-loaded="true">
	<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
		<a class="navbar-brand" href="/welcome">TRGET</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/home">Home
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/usersettings"
					id="dropdown01" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">USER MANAGEMENT</a>
					<div class="dropdown-menu" aria-labelledby="User Management">
						<a class="dropdown-item" href="/allusers">All Users</a> <a
							class="dropdown-item" href="/edit-user">User Update</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
			
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/team"
					id="dropdown01" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">TEAM MANAGEMENT</a>
					<div class="dropdown-menu" aria-labelledby="Team Management">
						<a class="dropdown-item" href="/allteams">Create New Team</a> <a
							class="dropdown-item" href="/edit-team">Manage Your Team</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>

			</ul>
			
			<form class="form-inline mt-2 mt-md-0">
				
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">LogOut</button>
			</form>
			
		</div>
	</nav>


	<div role="main" class="container">
	
<div id="home" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#home" data-slide-to="0" class="active"></li>
    <li data-target="#home" data-slide-to="1"></li>
    <li data-target="#home" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item-active">
      <img src="/images/operational-excellence-1100x500.png" alt="Los Angeles" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>We had such a great time in LA!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/images/lampada-1100x500.jpg" alt="Chicago" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/images/business-education-blog-image-1100-x500.jpg" alt="New York" width="1100" height="500">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
	
		 </div>
	<footer class="sticky-footer-navbar">
		<div class="container">
			<p class="m-0 text-center text-black">Copyright © AKA
				2018</p>
		</div>

	</footer>
	<script src="/webjars/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
</body>
</html>


<!--

	
	
	
	
	
	-->