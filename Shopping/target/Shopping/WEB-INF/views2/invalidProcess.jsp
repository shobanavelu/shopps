<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/commonn.jsp"%>

<div class="span9" >
	 
	<h1> Invalid Cart</h1><br>
                <div class="span5">
             <a href="<spring:url value="/shopping/allItems" />" class="btn btn-primary">Continue Shopping</a>
			</div>	
</div>

<%@include file="/WEB-INF/views/footer.jsp" %>