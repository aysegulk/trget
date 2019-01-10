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
					class="nav-link dropdown-toggle" href="/team" id="dropdown01"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">TEAM
						MANAGEMENT</a>
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
		<c:choose>
			<c:when test="${mode=='MODE_USER' }">
				<div class="jumbotron">
					
					<h3>User Management</h3>
					<h1></h1>
					<p class="lead" align="justify">includes a full user management
						suite Create an unlimited number of user accounts Create groups to
						organize users Specify roles for each user to determine access
						level Manage roles for users and groups Request account form for
						automatic submission</p>
					 <img src="/images/user-management_3.jpg" alt="Los Angeles" width="500" height="500">
				</div>
			</c:when>

			<c:when test="${mode=='ALL_USERS' }">
				<div class="container text-center" id="Users">
					<h3>Users</h3>
					<hr>
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Id</th>
									<th>UserName</th>
									<th>Name</th>
									<th>SurName</th>
									<th>Email</th>
									<th>Delete</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="user" items="${users }">
									<tr>
										<td>${user.id}</td>
										<td>${user.username}</td>
										<td>${user.name}</td>
										<td>${user.surname}</td>
										<td>${user.email}</td>
										<td><a href="/delete-user?id=${user.id }"><span
												class="glyphicon glyphicon-trash"></span></a></td>
										<td><a href="/edit-user?id=${user.id }"><span
												class="glyphicon glyphicon-pencil"></span></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:when>

			<c:when test="${mode=='MODE_UPDATE' }">
				<div class="py-5 text-center">
					<h3>Update User</h3>
					<hr>

					<form class="form-horizontal" method="POST" action="edit-user">
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
							<input type="submit" class="btn btn-primary" value="Update" />
						</div>
					</form>
				</div>
			</c:when>


		</c:choose>
	</div>
	<script src="/webjars/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
</body>
</html>
