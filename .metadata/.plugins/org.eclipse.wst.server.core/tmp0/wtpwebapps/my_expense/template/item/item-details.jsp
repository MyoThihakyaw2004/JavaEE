<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
<head>
<c:import url="../common/header.jsp"></c:import>
</head>
<body>
	<div class="container-fluid">
		<!-- nav start-->
		<c:import url="../common/nav.jsp"></c:import>

		<!-- nav end-->

	</div>
	<div class="container-md my-3 text-center">
		<h1>Item Details</h1>
			<!-- Alert -->
					<c:if test="${not empty ok  and not ok}">
								<div class="alert alert-danger" role="alert">
									Deleting Item is fail
								</div>
					</c:if>
		
		<div class="row">
			
				<div class="col-md-8 mx-auto">
					<div class="card" >
						<img src="${item.image }" class="card-img-top"
							style="height: 36rem" alt="...">
						<div class="card-body text-center">
							<h3 class="card-title">${ item.name }</h3>
							<p class="card-text">category : ${item.category }</p>
							<p class="card-text">price :$ ${item.price }</p>
							<p class="card-text">quantity : ${item.quantity }</p>
							<p class="card-text">sub total : ${item.subTotal }</p>
							<p class="card-text">added : ${item.issuedDate }</p>
							<p class="card-text">essential : ${item.essential ? "yes" : "no" }</p>
							<h5 class="card-text">Description : </h5>
							<p class="card-text">${item.description }</p>
							<c:url var="updateLink" value="item">
								<c:param name="mode" value="LOAD"></c:param>								
								<c:param name="itemId" value="${item.id }"></c:param>
							</c:url>
								<c:url var="deleteLink" value="item">
								<c:param name="mode" value="DELETE"></c:param>								
								<c:param name="itemId" value="${item.id }"></c:param>
							</c:url>
							
							<a href="${updateLink }" class="btn btn-secondary">Edit</a>
							<a href="${deleteLink }" class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>
			

		</div>
	</div>
	</div>

	<c:import url="../common/footer.jsp"></c:import>

</body>
</html>