<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>User Management Application</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> User
					Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="text-center">List Of Users</h1>
			</div>
			<hr>
			<div class="col-12 text-left">
				<a href="<%=request.getContextPath()%>/new" class="btn btn-primary">Add
					New User</a>
			</div>
			<br> <br> <br>
			<div class="col-12">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Country</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${listUser}">
							<tr>
								<td><c:out value="${user.id}" /></td>
								<td><c:out value="${user.name}" /></td>
								<td><c:out value="${user.email}" /></td>
								<td><c:out value="${user.country}" /></td>
								<td><a href="edit?id=<c:out value='${user.id}'/>"
									class="btn btn-primary">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td><a href="delete?id=<c:out value='${user.id}'/>"
									class="btn btn-warning">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>

</html>