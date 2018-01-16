<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login to our app</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/logReg.css">
</head>
<body>

	<div class="container">
		<div class="wrapper">
			<h3 class="form-signin-heading">Please Sign In</h3>
			<hr class="colorgraph">
			<br>
			<form action="LoginAuthenticate" method="post" name="Login_Form"
				class="form-signin">
				Username: <input type="text" class="form-control" name="username"
					placeholder="Username" required="" autofocus="" /><br /> Password:
				<input type="password" class="form-control" name="password"
					placeholder="Password" required="" /><br />
				<button class="btn btn-lg btn-primary btn-block" name="Submit"
					value="Login" type="Submit">Login</button>
				<p>Not registered? Register <a href ="register.jsp">here</a></p>
				<font color="red">${param.message}</font>	
			</form>
		</div>
	</div>
</body>
</html>

