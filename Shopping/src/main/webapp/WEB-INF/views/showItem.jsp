<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/header.jsp"%>


<%@include file="/WEB-INF/views/navbar.jsp"%>
<br>
<div class="span12 center margin-bottom"> 
					<h3>Product Details</h3>
					</div><br>
        <div class="container" ng-app = "addToCartApp">
                <div class="row"><br>
	 <div class="span3">
		<img src="<c:url value="/resources/images/${item.itemId}.png" /> " style ="height:350px;width:200px;" alt="image"/>
	</div>	 
	  <br><br>
	<div class="span7">

		<div class="spanAddress">
			<address>
				<strong>Name:</strong> <span>${item.itemName}</span><br><br>
				<strong>Description:</strong> <span>${item.itemDescription}</span><br><br>
				<strong>Manufacturer:</strong> <span>${item.itemManufacturer}</span><br><br>
				<strong>Category:</strong> <span>${item.itemCategory}</span><br><br>
				<strong>Color:</strong> <span>${item.itemColor}</span><br><br>
			</address>
		</div>	
				
		<div class="span6">
			<h2>
				<strong>Price: Rs. ${item.itemPrice}</strong> <br><br>
			</h2>
		</div>	
		
					<c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/menshopping/allItems" />
                     <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                        <c:set var="url" scope="page" value="/admin/additems" />
                    </c:if>
					
		
						<div class="span6">
							<div class="span4 no_margin_left">
									<p ng-controller="addToCartCtrl">
									<a href="<c:url value="${url}" />" class="btn btn-primary">Back</a>
									<c:if test="${pageContext.request.userPrincipal.name  != 'admin'}">
										<a href="#" class="btn btn-primary"
										   ng-click="addItemToCart('${item.itemId}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</a>
										<a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
									</c:if>
								</p>
							</div>	
							
			
						</div>	
		
						<div class="span6">
						
							
						</div>	
		
		 			</div>	

  				</div>


                    
                    
                </div>

        <script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>
        
        <%@include file="/WEB-INF/views/footer.jsp" %>
