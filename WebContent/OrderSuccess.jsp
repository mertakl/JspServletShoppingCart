<%@ include file="header.jsp"%>
	<div style="margin-top: 100px; text-align: center;">
		<h3>Your order is successful!</h3>
		<a href="/OrganiccFoods/index.jsp">Return to homepage!</a>
	</div>
<% 
	session.removeAttribute("cart");
%>
<%@ include file="footer.jsp"%>