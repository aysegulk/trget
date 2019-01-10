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
				<li class="nav-item"><a class="nav-link" href="/welcome">Home
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/login">Login
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/register">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/about">About</a>
				</li>

			</ul>
			<form class="form-inline mt-2 mt-md-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>


	<div role="main" class="container"> <c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="jumbotron">
				<h1>Hit the nail right on the head !</h1>
				<h3>The Modern Day Performance Management Process</h3>
				<p class="lead" align="justify">Performance management starts at
					the very beginning of the hiring process, when a job is defined.
					From there, it involves continuous evaluation of employees' work to
					ensure it meets or exceeds expectations. Today, some form of
					performance management is practiced in most organizations, but
					unfortunately only 21 percent of employees agree that their
					performance is managed in a way that motivates them to do
					outstanding work. In order to improve performance management,
					companies must create a work environment that empowers employees to
					perform to the best of their abilities by providing continuous
					development opportunities, as well as continuous feedback and
					coaching. At its core, performance management involves
					goal-setting, evaluation and reward. When performance management is
					done well, employees become more productive, profitable and
					creative contributors. Here are four steps HR professionals can
					follow to effectively implement the performance management process.
					Plan Goals and Set Expectations</p>
				<a class="btn btn-lg btn-primary" href="#" role="button">View
					for the details...</a>
			</div>
			<div class="container">
				<!-- Example row of columns -->
				<div class="row">
					<div class="col-md-4">
						<h2>Heading</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn btn-secondary" href="#" role="button">View
								details »</a>
						</p>
					</div>
					<div class="col-md-4">
						<h2>Heading</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn btn-secondary" href="#" role="button">View
								details »</a>
						</p>
					</div>
					<div class="col-md-4">
						<h2>Heading</h2>
						<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis
							in, egestas eget quam. Vestibulum id ligula porta felis euismod
							semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris
							condimentum nibh, ut fermentum massa justo sit amet risus.</p>
						<p>
							<a class="btn btn-secondary" href="#" role="button">View
								details »</a>
						</p>
					</div>
				</div>

				<hr>

			</div>
		</c:when>
		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="py-5 text-center">
				<h3>Login User</h3>
				<hr>

				<form class="form-horizontal" method="POST" action="/login-user">
					<c:if test="${not empty error}">
						<div class="alert alert-danger">
							<c:out value="${error}"></c:out>
						</div>

					</c:if>
					<div class="form-group">
						<label class="col-xs-2 control-label">Username</label>
						<div class="col-xs-10">
							<input type="text" class="form-control " name="username"
								value="${user.username }" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-xs-2 control-label">Password</label>
						<div class="col-xs-10">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="py-5 text-center">
				<h3>New Registration</h3>
				<hr>

				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="col-xs-2 control-label">Username</label>
						<div class="col-xs-10">
							<input type="text" class="form-control " name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label">Name</label>
						<div class="col-xs-10">
							<input type="text" class="form-control" name="name"
								value="${user.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label">SurName</label>
						<div class="col-xs-10">
							<input type="text" class="form-control" name="surname"
								value="${user.surname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label">Email </label>
						<div class="col-xs-10">
							<input type="text" class="form-control" name="email"
								value="${user.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label">Password</label>
						<div class="col-xs-10">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_ABOUT' }">
			<div class="container">

				<!-- Introduction Row -->
				<h1 class="my-4">
					About Us <small>It's Nice to Meet You!</small>
				</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Sint, explicabo dolores ipsam aliquam inventore corrupti eveniet
					quisquam quod totam laudantium repudiandae obcaecati ea consectetur
					debitis velit facere nisi expedita vel?</p>

				<!-- Team Members Row -->
				<div class="row">
					<div class="col-lg-12">
						<h2 class="my-4">Our Team</h2>
					</div>
	
	
					<div class="col-lg-4 col-sm-6 text-center mb-4">
						<img class="rounded-circle img-fluid d-block mx-auto"
							src="/images/kedi.jpeg" alt="">
						<h3>
							AKA <small>Owner</small>
						</h3>
						<p>What does this team member to? Keep it short! This is also
							a great spot for social links!</p>
					</div>
	
				</div>

			</div>
		</c:when>


	</c:choose> </div>
	<footer class="sticky-footer-navbar">
		<div class="container">
			<p class="m-0 text-center text-black">Copyright � AKA
				2018</p>
		</div>

	</footer>
	<script src="/webjars/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
</body>
</html>


<!--

	
	
	
	
	
	-->