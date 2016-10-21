
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
     .dropdown{
    cursor: pointer;
    }
    .dropdown:hover .dropdown-menu{
    display: block;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #000000;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
   
  
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 

    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    
    
      <ul class="nav navbar-nav">
       <li><a href="<c:url value="/" /> ">Home</a></li>
							 <li><a href="<c:url value="/about" /> ">About Us</a></li>
							 <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
      <ul class="dropdown-menu">
						<li><a href="<c:url value="/menshopping/allItems" />">All</a></li>
						<li><a href="<c:url value="/menshopping/itemList?searchCondition=Formal Shirts" /> ">Formal Shirts</a></li>
						<li><a href="<c:url value="/menshopping/itemList?searchCondition=Casual Shirts" /> ">Casual Shirts</a></li>
						<li><a href="<c:url value="/menshopping/itemList?searchCondition=Jeans" /> ">Jeans</a></li>
						<li><a href="<c:url value="/menshopping/itemList?searchCondition=Formal Shoes" /> ">Formal Shoes</a></li>
						<li><a href="<c:url value="/menshopping/itemList?searchCondition=Sports Shoes" /> ">Sports Shoes</a></li>
							
          </ul>
          </li>  
							 
      </ul>
  <ul class="nav pull-right">
						
							   <li class="divider-vertical"></li>
							   <c:if test="${pageContext.request.userPrincipal.name != null}">
									<li><a href="<c:url value="/user/cart" />">Cart</a></li>
								
								<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
									 <li><a href="<c:url value="/admin/additems" />">View items</a></li>
									 <li><a href="<c:url value="/admin/user" />">View Customer</a></li>
								</c:if>
								<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
									<li><a href="<c:url value="/j_spring_security_logout" />">Sign Out</a></li>
									</c:if>
								 <c:if test="${pageContext.request.userPrincipal.name  == null}">
									<li><a href="<c:url value="/login" />">Login</a></li>
									<li><a href="<c:url value="/register" />">Sign Up</a></li>
								</c:if>
								
								
							 </ul>
    </div>
  </div>
</nav>