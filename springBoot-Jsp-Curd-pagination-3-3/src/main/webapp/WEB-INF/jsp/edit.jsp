
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body
	style="text-align: center; font-size: 200%; padding: 110px 350px; background-image: url('https://images.pexels.com/photos/925743/pexels-photo-925743.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=600')">
	<div style="text-align: center;">
		<h4 class="text-center text-primary">Edit Product form</h4>

		<form th:action="@{/update_products}" method="post">
			<input type="hidden" th:value="${product.id}" name="id"> 
			
			
			
			Name <input type="text" name="name" th:value="${product.name}"><br>


			Price  <input type="number" name="price"  th:value="${product.price}"><br> 
				
				
				
				Quantity <input type="number" name="quantity" th:value="${product.quantity}"><br>
				
				 <br>
				 
				 
			<button type="submit" class="btn btn-primary">Update
				Products</button>
		</form>
	</div>
</body>
</html>