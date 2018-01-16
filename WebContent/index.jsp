<%@ include file="header.jsp"%>
<div>
	<div class="jumbotron" id="promo">
		<h1>World of Organicc</h1>
		<p>Welcome to the world of organicc products!</p>
		<p>
			<a class="btn btn-info btn-lg" role="button" href="#">Shop now!</a>
		</p>
	</div>
</div>
<div class="container site-section" id="welcome">
	<h1>World of Organic</h1>
	<p>Welcome to the world of organic products!</p>
</div>
<sql:setDataSource var="items" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/organiccdb" user="root"
	password="241m1e2r3t4" />

<sql:query dataSource="${items}" var="result">
         SELECT * from organicc_products;
	</sql:query>

<div class="dark-section">
	<div class="container site-section" id="shopping-cart">
		<h1>Shop</h1>
		<div class="row">
			<c:forEach var="row" items="${result.rows}">

				<form name="modelDetail1" method="POST"
					action="servlet/CartController">

					<div class="col-md-4">
						<div class="thumbnail">
							<img src="${pageContext.servletContext.contextPath }/photoServlet?id=${row.id}" style="height:260px;"/>
							<div class="caption">
								<h4>Product Name : <c:out value="${row.product_name}" /></h4></br>
								<input type="hidden" name="product_name"
									value="<c:out value="${row.product_name}" />">
								<h4>Quantity: <input type="text" size="2" value="1" name="quantity"></h4></br>
								<h4>Price: <c:out value="${row.product_price}" /></h4></br>
								<input type="hidden" name="price"
									value="<c:out value="${row.product_price}" />"> <input
									type="hidden" name="action" value="add"> <input
									type="submit" name="addToCart" class="btn btn-primary btn-lg"
									value="Add To Cart">
							</div>
						</div>
					</div>
				</form>
			</c:forEach>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>