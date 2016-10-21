<div class="span14 popular_products">
				 <h3>Popular products</h3><br>
				<ul class="thumbnails">
				
				
				<c:forEach items="${items}" var="item">
				<c:if test="${searchCondition != null && searchCondition == item.itemCategory}">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/menshopping/showitem/${item.itemId}" />"> <img style ="height:200px;width:200px;" alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: ${item.itemPrice}</a><br><br>
					</div>
				
				</li>
				</c:if>
				<c:if test="${searchCondition == null }">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/menshopping/showitem/${item.itemId}" />"> <img style ="height:200px;width:200px;" alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
               </c:forEach>
				

			  </ul>
		</div>
		