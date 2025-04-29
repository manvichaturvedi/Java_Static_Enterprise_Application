<%@ page language="java" contentType="text/html; Charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta Charset="ISO-8859-1">
<title>Puma:Registeration</title>
<%@include file="allcomp/allcss.jsp" %>



</head>
<body style="background-image: linear-gradient(to left,#000033,#000066);">
<%@include file="allcomp/nav.jsp" %>

<div class="container mt-4">
<div class="row p-5">
<div class="col-md-8 offset-md-3">
<div class="card">
<div class="card-body">
<h1 class="text-center text-primary">Registeration</h1>

<%
String sucMsg =(String)session.getAttribute("sucMsg");
if(sucMsg!=null){
%>
<div class="alert alert-success text-center" role="alert"><%=sucMsg %>
 
</div>
<%
session.removeAttribute("sucMsg");
} 
%>


<%
String failedMsg =(String)session.getAttribute("failedMsg");
if(failedMsg!=null){
%>
<div class="alert alert-danger text-center" role="alert"><%=failedMsg%>
 
</div>
<%
session.removeAttribute("failedMsg");
} 
%>

<form action="regForm" method="post">


<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-user"></i> Full Name</b></label>
<input type="text" name="name" placeholder="enter your full name" class="form-control">
</div>

<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-user"></i> Father Name</b></label>
<input type="text" name="fname" placeholder="enter your father's name" class="form-control">
</div>

<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-envelope"></i> Email</b></label>
<input type="text" name="email" placeholder="enter your Email address" class="form-control">
</div>

<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-lock"></i> Password</b></label>
<input type="Password" name="password" placeholder="enter your password " class="form-control">
</div>


<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-calendar-days"></i> Date</b></label>
<input type="date" name="date" placeholder="enter your Date of birth" class="form-control">
</div>

<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-phone"></i> Phno</b></label>
<input type="text" name="phno" placeholder="enter your phone number" class="form-control">
</div>

<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-address-book"></i> Address</b></label>
<input type="text" name="address" placeholder="enter your address" class="form-control">
</div>

<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-globe"></i> Country</b></label>
<select class="form-select">
<option selected>select your country</option>
<option>ASIA</option>
<option>INDIA</option>
<option>PAKISTAN</option>
</select>
</div>

<div class="form-group mb-3 mt-3">
<label><b><i class="fa-solid fa-person-half-dress"></i> Gender</b></label>
<select class="form-select" name="gender">
<option selected>select your Gender</option>
<option>Male</option>
<option>Female</option>
<option>Other</option>
</select>
</div>

<div class="form-group mb-3 mt-3">
    <input type="checkbox" class="form-check-input ml-2 mt-4" name = "check" id="exampleCheck1">
    <label class="form-check-label ml-4 mt-3" for="exampleCheck1"><b>Agree terms and conditions</b></label>
  </div>

<div class="form-group mb-3 mt-3">
<button class="form-control" style="background-image: linear-gradient(to right,#33ffcc,#33ffff)" ><b>Submit</b></button>
</div>
</form>
</div></div></div></div>

</div>
<%@include file="allcomp/footer.jsp"%>

</body>
</html>
