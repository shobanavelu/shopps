<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>

<br>
<div class=" popular_products">

				 <h3>Products</h3><br>

<ul class="thumbnails">
				
				
				<c:forEach items="${items}" var="item">
				<c:if test="${searchCondition != null && searchCondition == item.itemCategory}">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/shopping/showitem/${item.itemId}" />"> <img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: ${item.itemPrice}</a><br><br>
					</div>
				
				</li>
				</c:if>
				<c:if test="${searchCondition == null }">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/menshopping/showitem/${item.itemId}" />"> <img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/menshopping/showitem/${item.itemId}" />"> <img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/menshopping/showitem/${item.itemId}" />"> <img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/menshopping/showitem/${item.itemId}" />"> <img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/menshopping/showitem/${item.itemId}" />"> <img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
               </c:forEach>
				

			  </ul>
			  </div>
			  <%@include file="/WEB-INF/views/footer.jsp"%>