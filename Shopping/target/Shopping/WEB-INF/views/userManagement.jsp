<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/commonn.jsp"%>


 <div class="span14 margin-top">
                   <div class="span12 center margin-bottom"> 
					<h3>Customers List</h3>
					</div>

        <table class="table table-bordered table-striped fs13">
            <thead>
            <tr class="bg-success" >
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>User Name</th>
                <th>Enabled</th>

            </tr>
            </thead>
            <c:forEach items="${usersDetailList}" var="usersDetail">
                <tr>
                    <td>${usersDetail.userFullName}</td>
                    <td>${usersDetail.userEmail}</td>
                    <td>${usersDetail.userPhone}</td>
                    <td>${usersDetail.username}</td>
                    <td>${usersDetail.enabled}</td>
                </tr>
            </c:forEach>
        </table>
        </div>

        <%@include file="/WEB-INF/views/footer.jsp" %>
