<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Tick Track | SignUp</title>
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


		#loginbox {
			position: relative;
		}

		form {
			font-family: Verdana, Geneva, Tahoma, sans-serif;
			text-align: center;
			position: absolute;
			top: 110px;
			left: 35%;
			height: 450px;
			width: 330px;
			padding: 10px 30px;
			background-color: #dffafa;
			border-radius: 10px;
		}

		h1 {
			color: #33AFA5;
			font-weight: 800;
		}

		#username,
		#password,
		#Confirmpassword,
		#email,
		#mobileno,
		#signupbtn,#dob {
			height: 30px;
			width: 230px;
			padding: 0px 40px;
			border-radius: 10px;
			background-color: #bdf5f5bd;
			border: rgb(208, 206, 206);
			font-family: 'Varela Round', sans-serif;

		}

		#signin-link {
			display: flex;
			justify-content: space-around;
			align-items: center;
		}
	</style>
</head>

<body>
	<nav id="navbar">
		<div id="logo">
			<h1 id="logo-img">TICK TRACK</h1>
		</div>
		<div id="nav-content">
			<div><a href="">ABOUT</a> </div>
			<div><a href="">HELP</a></div>
			<div><a href="">VIDEOS</a></div>
			<div><a href="">TASKS</a></div>
			<div><a href="">PREFRENCES</a></div>
		</div>
	</nav>

	<form action="signup" method="post">
		<h1>Signup</h1><br>
		<input type="text" name="username" id="username" placeholder="Username"><br><br>
		<input type="text" name="email" id="email" placeholder="E-mail address"><h5 style="color:red">${msg}</h5><br><br>
		<input type="password" name="password" id="password" placeholder="Password"><br><br>
		<input type="number" name="mobileno" id="mobileno" placeholder="Mobile Number"><br><br>
		<input type="date" name="dob" id="dob" placeholder="Date of birth"><br><br>
		<label for="" id="gender">Gender:</label>
		<input type="checkbox" value="male" name="gender" id="male"> Male
		<input type="checkbox" value="female" name="gender" id="female">Female<br><br>
		<button id="signupbtn">Sign-up</button><br><br>
		<a href="login">Already have an account? Login</a>
		<a href="">Terms and Conditions applied</a>
	</form>

</body>

</html>