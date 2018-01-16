<%@ include file = "header.jsp" %>

	<div class="container" style="margin-top : 100px;">
		<h2>My Cart</h2>
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>Product Name</th>
						<th>Unit Price</th>
						<td colspan="1">
						<th>Quantity</th>
						</td>
						<td colspan="2">
						<th>Total</th>
						</td>
					</tr>
				</thead>
				<tbody>
					<jsp:useBean id="cart" scope="session"
						class="com.ecommerce.CartBean" />
					<c:if test="${cart.lineItemCount==0}">
						<tr>
							- Your cart is currently empty -
							<br />
						</tr>
					</c:if>
					<c:forEach var="cartItem" items="${cart.cartItems}"
						varStatus="counter">
						<form name="item" method="POST" action="servlet/CartController">
							<tr>
								<td><c:out value="${cartItem.productName}" /></td>
								<td>$<c:out value="${cartItem.unitCost}" /></td>
								<td><input type='hidden' name='itemIndex'
									value='<c:out value="${counter.count}"/>'></td>
								<td><input type='text' name="quantity"
									value='<c:out value="${cartItem.quantity}"/>'></td>
								<td><input type="submit" name="action" value="Update"
									class="btn btn-primary"></td>
								<td><input type="submit" name="action" value="Delete"
									class="btn btn-primary"></td>
								<td>$<c:out value="${cartItem.totalCost}" /></td>
							</tr>
						</form>
					</c:forEach>
					<tr>
						<td colspan="5"></td>
						<td></td>
						<td>Subtotal: $<c:out value="${cart.orderTotal}" /></td>
						<tr><td><a href="/OrganiccFoods/OrderSuccess.jsp"><input type="submit" name="action" value="Order Now" class="btn btn-danger"></a></td></tr>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
<%@ include file = "footer.jsp" %>