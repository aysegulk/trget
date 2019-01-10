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
						<a class="dropdown-item" href="/save-team">Create New Team</a> <a
							class="dropdown-item" href="/allteams">Manage Your Team</a> <a
							class="dropdown-item" href="/allteams">Team List</a>
					</div></li>

			</ul>

			<form class="form-inline mt-2 mt-md-0">

				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">LogOut</button>
			</form>

		</div>
	</nav>


	<div role="main" class="container">
		<c:choose>
			<c:when test="${mode=='MODE_TEAM' }">
				<div class="jumbotron">

					<h3>Team Management</h3>
					<p class="lead" align="justify">
					<h3>Building the team:</h3>
					Before one can manage a team, it is very essential to prepare your
					team, because let’s face it, you cannot be building a team without
					intent. It is a given fact that your team members will be
					individuals with very different mindsets and points of view, but it
					is still important for you to ensure that each member of your team
					is a good fit and can work well with others. Know your team for
					proper delegation The first and foremost task of a manager is to
					delegate tasks in a team. Fact: No matter how many skills you have,
					you cannot simply do everything by yourself. Having a team makes
					tasks easier and accomplishes them much more efficiently. Task
					delegation does not mean that you state the task and wait for
					someone to choose it. You need to know all there is to know about
					your team, then, think about the skills, experience and
					competencies within your team, and start matching people to tasks.
					</p>

					<p class="lead" align="justify">
					<h3>Motivating your team:</h3>
					You have your team in place and you have the tasks assigned with
					the members. The next part is the actual execution. Motivation
					plays a key factor in team management. You need to bear in mind
					that different people have different needs when it comes to
					motivation. Some individuals are highly self-motivated, while
					others will under-perform without managerial input. This again
					brings in the part where you need to know your team and be able to
					judge where your inputs are needed the most.
					</p>

					<p class="lead" align="justify">
					<h3>Developing your team:</h3>
					We have already established that a team is made of individuals who
					have different outlooks and abilities. The same individuals are
					also mostly at different stages in their career. Some of them might
					find their tasks to be challenging, while some may be well
					practiced at their tasks. Whatever the case might be, as a manager,
					the responsibility falls to you to help your team members further
					develop their skills. Helping your team members to hone their
					skills makes you a great and in-demand manager. Not only does it
					help the organization, it is a personal development and growth for
					your team as well. Regular feedbacks are a good way to help people
					develop. Also Read: “Laugh it Out!” 3 Ways Humor Creates a
					Productive Workplace Before any kind of management, you need to
					have the elements in place, and now you should find it easy to
					build the team that is going to aim for perfection and fun in
					whatever tasks that are allotted to them. Keep a lookout for more
					on effective team management.
					</p>

				</div>

			</c:when>

			<c:when test="${mode=='SAVE_TEAM'}">
				<div class="py-5 text-center">
					<h3>Team Info </h3>
					<hr>

					<form class="form-horizontal" method="POST" action="save-team">
					<input type="hidden" name="id" value="${team.teamId }" />
					<div class="form-group">
						<label class="col-md-2 control-label">Team Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control " name="teamName"
								value="${team.teamName }" />
						</div>
					</div>

						<div class="form-group ">
							<input type="submit" class="btn btn-primary"
								value="Create Your Team" />
						</div>
					</form>
				</div>
			</c:when>

			<c:when test="${mode=='ALL_TEAMS' }">
				<div class="container text-center" id="allteams">
					<h3>TEAMS</h3>
					<hr>
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Id</th>
									<th>Team Name</th>
									
									<th>Delete</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="team" items="${allteams }">
									<tr>
										<td>${team.teamId}</td>
										<td>${team.teamName}</td>

										<td><a href="/delete-team?id=${team.teamId}"><span
												class="glyphicon glyphicon-trash"></span></a></td>
										<td><a href="/edit-team?id=${team.teamId }"><span
												class="glyphicon glyphicon-pencil"></span></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:when>

			<c:when test="${mode=='MODE_UPDATETEAM' }">
				<div class="py-5 text-center">
					<h3>Team List</h3>
					<hr>

					<form class="form-horizontal" method="POST" action="save-team">
						<input type="hidden" name="id" value="${team.teamId }" />
						<div class="form-group">
							<label class="col-md-2 control-label">Team Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control " name="teamName"
									value="${team.teamName }" />
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

	<footer class="sticky-footer-navbar bottom">
		<div class="container">
			<p class="m-0 text-center text-black">Copyright © AKA 2018</p>
		</div>

	</footer>
	<script src="/webjars/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
</body>
</html>

