<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<div class="container-fluid" style="height: 15px;background-color: cadetblue"></div>


<div class="container-fluid p-3" style="background-color: black">
<div class="row">
<div class="col-md-3 text-success">
<h1><i class="fa-solid fa-shield-cat"></i>Puma <i class="fa-solid fa-circle-check fa-beat"></i></h1></div>
<div class="col-md-6">
<form class="form-inline my-2 my-lg-0">
<input class="form-control mr-sm-2" type="search"
placeholder="search" aria-label="search">
<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
</form>
</div>

<c:if test ="${ not empty userobj}">

<div class="col-md-3">
<a href="Cart.jsp" class="btn btn-success"><i class="fa-solid fa-cart-shopping"></i>  </a>

<a href="Login.jsp" class="btn btn-success"><i class="fa-solid fa-user"></i> ${userobj.name} </a>
<a href="Logout" class="btn btn-primary text-white"><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout </a>

</div>

</c:if>

<c:if test ="${ empty userobj}">

<div class="col-md-3">

<a href="Login.jsp" class="btn btn-success"><i class="fa-solid fa-user"></i> Login</a>
<a href="Logout" class="btn btn-primary text-white"><i class="fa-solid fa-arrow-right-from-bracket"></i> Register</a>


</div>

</c:if>


</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house fa-bounce"></i><b>   Home</b></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="Shoes.jsp"><i class="fa-solid fa-eye"></i><b> Shoes </b></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="Hoodies.jsp"><i class="fa-solid fa-eye"></i><b> Hoodies </b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="T-shirts.jsp"><i class="fa-solid fa-shirt"></i><b> T-Shirts</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="GymWear.jsp"><i class="fa-solid fa-eye"></i><b> Gym Wear </b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Caps.jsp"><i class="fa-brands fa-redhat"></i><b> Caps </b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Bags.jsp"><i class="fa-solid fa-bag-shopping"></i><b> Bags </b></a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link" href="New.jsp"><i class="fa-solid fa-bell"></i><b> What's New! </b></a>
      </li>
      

     
          
     
    </ul>
   
</div>
</nav>