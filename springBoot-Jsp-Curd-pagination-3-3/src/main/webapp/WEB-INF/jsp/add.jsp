
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center; font-size:200%; padding:110px 350px; background-image:url('https://images.pexels.com/photos/1939485/pexels-photo-1939485.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')">
	<div style="border: 4px outset black;  text-align: center; padding:40px">
		<h4 class="text-center text-primary">Add Product form</h4>
		
		<form th:action="@{/save_products}" method="post">

			
				 Name <input type="text"  name="name"><br>

			

			
				price  <input type="number"  name="price"><br>

			

			
				Quantity <input type="number" name="quantity"><br>


			<button type="submit" class="btn btn-primary">Add Products</button>
		</form>
	</div>
</body>
</html>