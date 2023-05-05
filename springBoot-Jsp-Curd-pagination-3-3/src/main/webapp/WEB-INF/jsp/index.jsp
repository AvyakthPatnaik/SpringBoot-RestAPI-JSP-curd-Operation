
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body style="background-image: url('https://images.pexels.com/photos/2387818/pexels-photo-2387818.jpeg'); color:dark;">
		
		<a style="padding: 40px 30px;color:white; font-size:150%;" href="load_form">Add Toys</a>
	<div align="center" style="padding: 20px 80px ;font-size:200%;">
		<table border="2" cellpadding="30" style="color:white;border:8px dark; font-size:100%;">
			<caption>
				<h2>List of Toys</h2>
			</caption>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<tbody>
				<tr th:each="p : ${all_products}">
					<th scope="row">[[${p.id}]]</th>
					<td>[[${p.name}]]</td>
					<td>[[${p.price}]]</td>
					<td>[[${p.quantity}]]</td>
					<td><a th:href="@{'/edit_form/'+${p.id}}"
						style="color:white;">Edit</a></td>
					<td><a  th:href="@{'/delete/'+${p.id}}"
						style="color:white;">Delete</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="pagination"
		style="text-align: center; padding: 1px 1px; font-size: 30px;">
		<a style="color:white;" href="http://localhost:8083">1</a> <a
		style="color:white;"	href="http://localhost:8083/page/1">2</a> <a
		style="color:white;"	href="http://localhost:8083/page/2">3</a> <a
		style="color:white;"	href="http://localhost:8083/page/3">4</a> <a
		style="color:white;"	href="http://localhost:8083/page/4">5</a>
	</div>
</body>
</html>