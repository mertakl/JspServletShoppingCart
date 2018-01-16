<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>organicc</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cookie">
<link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/Pretty-Footer.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand navbar-link" href="${pageContext.servletContext.contextPath }/index.jsp"><strong>Organicc</strong>
				</a>
				<button class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#navcol-1">
					<span class="sr-only">Toggle navigation</span><span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="nav navbar-nav navbar-right">
					<li role="presentation"><a href="${pageContext.servletContext.contextPath }/index.jsp">Home </a></li>
					<li role="presentation"><a href="#">About </a></li>
					<li role="presentation"><a href="${pageContext.servletContext.contextPath }/ShoppingCart.jsp">My Cart</a></li>
					<li role="presentation"><a href="logout.jsp">Logout <c:out
								value="${sessionScope['loginUser']}" /> <c:if
								test="${empty sessionScope['loginUser']}">
								<c:redirect url="login.jsp" />
							</c:if>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>