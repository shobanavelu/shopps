<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/commonn.jsp"%>

<div class="col-sm-12" >
	 <center>
					<h2>Thank you for Shopping</h2><br>
					<h3>Your order submitted successfully.</h3><br>

                    <p>Your order will be shipped with in three business days!</p></center><br>
                <div class="col-sm-5"></div><div class="col-sm-2">	 <center>
                
             <a href="<spring:url value="/" />" class="btn btn-primary ">Ok</a></center>
			</div>	<div class="col-sm-5"></div>
</div>

<%@include file="/WEB-INF/views/footer.jsp" %>