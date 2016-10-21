<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<br>
<h2 style="text-decoration: blink;color: maroon;font-style: italic;">Welcome Admin:</h2>
<br>
 <div class="span3">
             <a href="<spring:url value="/cat" />" class="btn btn-primary">Add Categories</a>
             <br><br>
	
             <a href="<spring:url value="/admin/additems" />" class="btn btn-primary">Add Product</a>
			</div>	
				        <%@include file="/WEB-INF/views/footer.jsp" %>
				