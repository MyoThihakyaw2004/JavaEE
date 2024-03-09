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
					<c:if test="${not empty ok  and not ok}">
								<div class="alert alert-danger" role="alert">
									Updating Item is fail
								</div>
					</c:if>
					<h5 class="card.title">Update Item Form</h5>
					<form action="item" method="post">

						<input type="hidden" name="mode" value="UPDATE" />
						<input type="hidden" name="itemId" value="${item.id }" />
						<div class="mb-3">
							<label for="Name" class="form-label">Name</label> <input
								type="text" class="form-control" id="name" name="name"
								value="${item.name }" required>

						</div>
						<div class="mb-3">
							<label for="category" class="form-label">Category</label> <input
								type="text" class="form-control" id="category" name="category"
								value="${item.category }"
								required>
						</div>

						<div class="mb-3">
							<label for="price" class="form-label">Price</label> <input
								type="text" class="form-control" id="price" name="price"
								value="${item.price }"
								required>
						</div>
						<div class="mb-3">
							<label for="quantity" class="form-label">Quantity</label> <input
								type="number" class="form-control" id="quantity" name="quantity"
								value="${item.quantity }"
								required>
						</div>
						<div class="mb-3">
							<label for="image" class="form-label">Image</label> <input
								type="text" class="form-control" id="image" name="image"
								value="${item.image }"
								required>
						</div>
						<div class="mb-3">
							<label for="description" class="form-label">Description</label>
							<textarea class="form-control" id="description"
								name="description" rows="5"  required>${item.description }</textarea>
						</div>
						<div class="mb-3 form-check">
							<c:choose>
								<c:when test="${item.essential }">
									<input type="checkbox" class="form-check-input" id="essential"
									name="essential" value="true" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" class="form-check-input" id="essential"
								name="essential" value="true">
								</c:otherwise>
							</c:choose>
							 <label
								class="form-check-label" for="essential">Essential Item</label>
								
						</div>
						<button type="submit" class="btn btn-primary float-end">Update</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../common/footer.jsp"></c:import>
</body>
</html>