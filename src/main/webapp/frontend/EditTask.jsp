<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Tick Track | Edit task</title>
<style>
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

body {
	background-color: #F7FFFF;
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

a {
	text-decoration: none;
	color: #33AFA5;
}

h1 {
	color: #33AFA5;
	font-weight: 800;
}

#loginbox {
	position: relative;
}

form {
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	text-align: center;
	position: absolute;
	top: 150px;
	left: 35%;
	height: 350px;
	width: 330px;
	padding: 10px 30px;
	background-color: #dffafa;
	border-radius: 10px;
}

img {
	height: 100px;
	width: 100px;
}

#name, #description, #image, button {
	height: 30px;
	width: 280px;
	padding: 0px 40px;
	border-radius: 10px;
	background-color: #bdf5f5bd;
	border: rgb(208, 206, 206);
	font-family: 'Varela Round', sans-serif;
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
	<form action="editTask" method="post">
		<h1>Enter task details</h1>
		<br> <input type="hidden" name="id" placeholder="Id" value="${task.id}"><br>
		<br> <input type="text" name="name" placeholder="Name" id="name" value="${task.name}"><br> 
		<br> <input type="text" name="description" id="description" placeholder="Description" value="${task.description}"><br>
		<br>
		<button>Update</button>
		<br><br>
		<button>Cancle</button>
		<br> <br>
	</form>
</body>

</html>