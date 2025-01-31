<%@page import="todo.dto.Task"%>
<%@page isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tick Track | Home</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

body {
	background-color: #F7FFFF;
	position: relative;
}

:root {
	--black: #000000ff;
	--light-sea-green: #33AFA5ff;
	--tiffany-blue: #82CDC9ff;
	--tiffany-blue-2: #6ED0C9ff;
	--tiffany-blue-3: #89D8D3ff;
	--mint-cream: #F7FFFFff;
	--lato: 'Lato', sans-serif;
	;
}

#navbar {
	height: 75px;
	display: flex;
	justify-content: space-around;
	align-items: center;
	font-family: var(--lato);
	font-weight: 600;
	background-color: #F7FFFF;
	color: rgb(247, 255, 255);
	position: relative;
	box-shadow: 10px 10px;
}

#logo-img {
	position: absolute;
	top: 18px;
	left: 300px;
	height: 60px;
	width: 230px;
}

#nav-content {
	width: 550px;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

h1 {
	color: #33AFA5;
	font-weight: 800;
}

a {
	text-decoration: none;
	color: #33AFA5;
}

table {
	position: absolute;
	margin: auto;
	left: 100px border: 2px solid black;
	top: 100px;
	color: #33AFA5;
}

tr {
	color: #33AFA5;
	border: 2px solid black;
}

tr {
	heigth: 100px;
	width: 700px;
}

th, td {
	heigth: 100px;
	width: 100px;
}

th {img { height:80px;
	width: 80px
}

}
button {
	color: #33AFA5;
	border-radius: 10px;
	height: 20px;
	width: 80px;
	border: none;
	background-color: #9ad8d3a4;
}

#msg {
	font-family: 'Varela Round', sans-serif;
	font-weight: 800;
	position: absolute;
	right: 10px;
	height: 60px;
	width: 300px;
	border-radius: 10px;
	#
	pos
	{
	color
	:
	green;
}

#neg {
	color: red;
}
}
</style>
</head>
<body>
	<nav id="navbar">
		<div id="logo">
			<h1 id="logo-img">TICK TRACK</h1>
		</div>
		<div id="nav-content">
			<div>
				<a href="">ABOUT</a>
			</div>
			<div>
				<a href="">HELP</a>
			</div>
			<div>
				<a href="">VIDEOS</a>
			</div>
			<div>
				<a href="">TASKS</a>
			</div>
			<div>
				<a href="">PREFRENCES</a>
			</div>
		</div>
	</nav>
	<div id="msg">
		<span id="pos">${positiveMsg}</span> <span id="neg">${negativeMsg}</span>
	</div>
	
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Task Name</th>
				<th scope="col">Description</th>
				<th scope="col">Status</th>
				<th scope="col">Delete</th>
				<th scope="col">Edit</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="task" items="${task}">
				<tr>
					<td>${task.name}</td>
					<td>${task.description}</td>
					<c:if test="${task.status}">
						<td>Completed</td>
					</c:if>
					<c:if test="${!task.status}">
						<td><a href="completeTask?id=${task.id}"><button>Complete</button></a></td>
					</c:if>
					<td><a href="deleteTask?id=${task.id}"><button>Delete</button></a></td>
					<td><a href="editTask?id=${task.id}"><button>Edit</button></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<button>
		<a href="logout">Logout</a>
	</button>
	<button>
		<a href="addTask">Add Task</a>
	</button>
</body>
</html>