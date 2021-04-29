<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<a href="" class="navbar-brand">User Management Application </a>
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
			<div class="col-md-5">
				<div class="card">
					<div class="card-body">
						<c:if test="${user != null}">
							<form action="<%=request.getContextPath()%>/update" method="get">
						</c:if>
						<c:if test="${user == null}">
							<form action="<%=request.getContextPath()%>/insert" method="get">
						</c:if>
						<caption>
							<h2>
								<c:if test="${user != null}">
									Edit User
								</c:if>
								<c:if test="${user == null}">
									Add New User
								</c:if>
							</h2>
						</caption>
						<c:if test="${user != null}">
							<input type="hidden" name="id"
								value="<c:out value='${user.id}'/>">
						</c:if>
						<fieldset class="form-group">
							<label>User Name</label> <input type="text"
								value="<c:out value='${user.name}' />" class="form-control"
								name="name" required="required">
						</fieldset>

						<fieldset class="form-group">
							<label>User Email</label> <input type="text"
								value="<c:out value='${user.email}' />" class="form-control"
								name="email">
						</fieldset>

						<fieldset class="form-group">
							<label>User Country</label> <input type="text"
								value="<c:out value='${user.country}' />" class="form-control"
								name="country">
						</fieldset>
						<button type="submit" class="btn btn-success">Save</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>

</html>