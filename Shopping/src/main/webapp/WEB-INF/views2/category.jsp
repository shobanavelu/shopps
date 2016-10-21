<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<title>Categories</title>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<br>
  <form>
  <input type="submit" onclick="location.href='http://localhost:8080/Shopping/admin/menu';"class="btn btn-primary" value="Go to Admin" /></form>
    <div class="col-sm-5">
			<div class="panel panel-default" style="background-color:#cccccc; color:#000000">
           <div class="panel-heading" style="background-color:#df9f9f; color:#0000">Add Category</div>
    <div class="panel-body">

	
	<c:url var="addAction" value="/category/add"></c:url>

	<form:form action="${addAction}" commandName="category">
		 <div class="span9 margin-top">
               <div class="span4">   
          <div class="control-group">
			
				
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					
				</c:choose>
			</div>
			
				<div class="control-group">
					  <label class="control-label">Name</label><form:errors path="name" cssStyle="color: #ff0000;" />
						<div class="controls docs-input-sizes">
						<form:input path="name" id="name" class="form-Control" patttern =".{5,7}" required="true" title="name should contains 5 to 7 characters"/>
						</div>
						</div>
			<div class="control-group">
							  <label class="control-label">Description</label><form:errors path="description" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:textarea path="description" id="description" class="form-Control" patttern =".{6,7}" required="true" title="Description should contains 6 to 7 characters"/>
								</div>
						</div>
		
				<div class=" no_margin_left"><c:if test="${!empty category.name}">
						<input type="submit" class="btn btn-info"
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Category"/>" />
					</c:if></div>
			</div>
			
		
	</div>
	</form:form>
	</div>
	</div>
	</div>
	
	
	<div class="col-sm-7">
			<div class="panel panel-default" style="background-color:#cccccc; color:#000000">
           <div class="panel-heading" style="background-color:#df9f9f; color:#0000">Category List</div>
    <div class="panel-body">

	
	
	<c:if test="${!empty categoryList}">
		<table class="table">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	</div>
	</div>
	</div>
	</div></div>
</body>
</html>