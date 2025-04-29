<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Home</title>
<%@include file="allcomp/allcss.jsp" %>
<style>
.back-img9{
background: url("img1/52233.jpg");
height: 150vh;
width:100%;

background-repeat: no-repeat;
background-size: cover;
}

a{
text-decoration: none;
color: black;
}
a:hover{
text-decoration:none;
color: black;
}
</style>
</head>
<body>

<%@include file="allcomp/nav.jsp" %>

<div class="container mt-5 mb-10 back-img9  " >
<h2 class="text-center text-dark">Welcome Admin: Manvi Chaturvedi</h2>
<div class="row p-5 mb-20">
<div class="col-md-3">
<a href="Updateitem.jsp">
<div class="card" style="background-color:#00cccc">
<div class="card-body text-center">
<h1><i class="fa-solid fa-plus text-primary"></i></h1><br>
<h4>Add item</h4>
~~~~~~~~~~~~~~~~~
</div></div></a></div>


<a href="allitems.jsp">
<div class="col-md-3">
<div class="card" style="background-color:#00cccc">
<div class="card-body text-center">
<h1><i class="fa-solid fa-eye text-danger"></i></h1><br>
<h4>All items</h4>
~~~~~~~~~~~~~~~~~

</div></div></a></div>


<a href="orders.jsp">
<div class="col-md-3">
<div class="card" style="background-color:#00cccc">
<div class="card-body text-center ">
<h1><i class="fa-solid fa-plus text-primary"></i></h1><br>
<h4>Orders</h4>
~~~~~~~~~~~~~~~~~

</div></div></a></div>

 


<a href="Logout">
<div class="col-md-3">
<div class="card" style="background-color:#00cccc">
<div class="card-body text-center">
<h1><i class="fa-solid fa-right-from-bracket text-warning"></i></h1><br>
<h4>Logout</h4>
~~~~~~~~~~~~~~~~~

</div></div></a></div></div></div>
<%@include file="allcomp/footer.jsp" %>

</body>
</html>