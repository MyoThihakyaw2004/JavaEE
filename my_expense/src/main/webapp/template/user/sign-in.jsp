<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<c:import url="../common/header.jsp" />
</head>
<body>
	
	<!-- container -->
	<div class="container-md">
		<div class="col-md-6 mx-auto">
			<div class="card mb-3 mt-5">
				<div class="card-header">Login Here</div>
				<div class="card-body">
					<c:if test="${not empty loginOk and not loginOk }">
						<div class="alert alert-danger" role="alert">
							Username or Password is incorrect
						</div>
					</c:if>
					
					<form action="login" method="post">
						<input type="hidden" name="mode" value="LOGIN">
						<div class="mb-3">
							<label for="username" class="form-label">Username or Email</label> <input
								type="text" class="form-control" id="username" name="username"
								required="required">
						</div>

						<div class="mb-3">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" id="password" name="password"
								required="required">
						</div>

						
						<button type="submit" class="btn btn-primary float-end">Login</button>
						<p style="clear: both;font-size: 0.8rem;">Does not have an account?sign up <a href="user" class="text-decoration-none text-muted">here</a></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- form -->
	<c:import url="../common/footer.jsp" />
</body>
</html>