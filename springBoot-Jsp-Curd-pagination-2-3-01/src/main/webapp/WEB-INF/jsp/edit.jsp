
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
<!-- Start Navbar -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Products System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<!-- End Navbar -->
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					
					<h4 class="text-center text-primary">Edit Product form</h4>
					
					<div th:if="${session.msg}">
					<h5 class="text-center text-sucess" th:text="${session.msg}"></h5>
					</div>
						<form th:action="@{/update_products}" method="post">
						<input type="hidden" th:value="${product.id}" name="id">
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Product Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="productName" th:value="${product.productName}">
								
							</div>
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Description</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="decription" th:value="${product.decription}">
								
							</div>
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">price
									</label> <input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="price" th:value="${product.price}">
								
							</div>
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Quantity
								</label> <input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="quantity" th:value="${product.quantity}">
								
							</div>
							
							<button type="submit" class="btn btn-primary">Update Products</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>