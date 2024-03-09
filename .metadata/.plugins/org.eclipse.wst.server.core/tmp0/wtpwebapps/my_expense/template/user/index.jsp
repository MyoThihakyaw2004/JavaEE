<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <c:import url="common/header.jsp"></c:import>
    </head>
    <body>
        
      
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
    
                    <!--navstart-->
                 		<c:import url="common/nav.jsp"></c:import>
                 	<!--navend-->
                      <!--main content start-->
                      <div class="container-md my-3">
                        <div class="row ">
                        
                          <c:forEach var="item" items="${items}">
                          
                          <c:url var="detailLinks" value="item">
                          	<c:param name="mode" value="SINGLE"></c:param>
                          	<c:param name="itemId" value="${item.id }"></c:param>
                          </c:url>
                          
                          		  <div class="col-md-6 col-lg-4 mt-3">
                                <div class="card" style="width: 18rem;">
                                    <img src="${item.image }" class="card-img-top" style="height:18rem;" alt="...">
                                    <div class="card-body">
                                      <h5 class="card-title">Name : ${item.name }</h5>
                                      <p class="card-text">Category : ${item.category }</p>
                                      <p class="card-text">Price :$${item.price }</p>
                                      <p class="card-text">Quantity : ${item.quantity }</p>
                                      <a href="${detailLinks }" class="btn btn-info">View</a>
                                    </div>
                                  </div>
                                  
                            </div>
                          </c:forEach>
                           
                        </div>
                      </div>
                      <!--main content end-->
                </div>
            </div>
        </div>
     
     <c:import url="common/footer.jsp"></c:import>
    </body>
    </html>