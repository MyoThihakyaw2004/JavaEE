<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../common/header.jsp"></c:import>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../common/nav.jsp"></c:import>

	<div class="container-md">
		<div class="col-md-8">
			<div class="card">
				<div class="card-body">
					<!-- Alert -->
					<c:if test="${not empty ok }">
						<c:choose>
							<c:when test="${ok }">
								<div class="alert alert-success" role="alert">
									Successfully created item
								</div>
							</c:when>
							<c:otherwise>
							<div class="alert alert-danger" role="alert">
									Item creation failed
								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
					<h5 class="card.title">Add Item Form</h5>
					<form action="item" method="post">

						<input type="hidden" name="mode" value="CREATE" />
						<div class="mb-3">
							<label for="Name" class="form-label">Name</label> <input
								type="text" class="form-control" id="name" name="name" required>

						</div>
						<div class="mb-3">
							<label for="category" class="form-label">Category</label> <input
								type="text" class="form-control" id="category" name="category"
								required>
						</div>

						<div class="mb-3">
							<label for="price" class="form-label">Price</label> <input
								type="text" class="form-control" id="price" name="price"
								required>
						</div>
						<div class="mb-3">
							<label for="quantity" class="form-label">Quantity</label> <input
								type="number" class="form-control" id="quantity" name="quantity"
								required>
						</div>
						<div class="mb-3">
							<label for="image" class="form-label">Image</label> <input
								type="text" class="form-control" id="image" name="image"
								required>
						</div>
						<div class="mb-3">
							<label for="description" class="form-label">Description</label>
							<textarea class="form-control" id="description"
								name="description" rows="5" required></textarea>
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input" id="essential"
								name="essential" value="true"> <label
								class="form-check-label" for="essential">Essential Item</label>
						</div>
						<button type="submit" class="btn btn-primary float-end">Create</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../common/footer.jsp"></c:import>
</body>
</html>