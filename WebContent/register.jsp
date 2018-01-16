<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/logReg.css">
</head>
<body>
<div class="container">
		<div class="wrapper">
			<h3 class="form-signin-heading">Register Here</h3>
			<hr class="colorgraph">
			<br>
			<form action="RegisterServlet" name="register_form" method="post" class="form-signin">
				Username: <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" /><br /> 
				Password: <input type="password" class="form-control" name="password" placeholder="Password" required="" /><br />
				Retype Password: <input type="password" class="form-control" name="password2" placeholder="Password" required="" /><br />
				<button class="btn btn-lg btn-primary btn-block" name="Submit"
					value="SignUp" type="Submit">Sign Up</button>
				<p>Already registered!! <a href="login.jsp">Login Here</a></p>
				<font color="red">${param.message}</font>	
			</form>
		</div>
</div>			
</body>
</html>