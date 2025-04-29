<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Puma:Updateitems</title>
<%@include file="allcomp/allcss.jsp" %>
</head>
<body style="background-image: linear-gradient(to left,#000033,#000066)">
<%@include file="allcomp/nav.jsp" %>
<div class="container mt-4">
<div class="row p-5">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">

<h3 class="text-center text-success"> Enter Your Login Credentials</h3>



<%
String succMsg =(String)session.getAttribute("succMsg");
if(succMsg!=null){
%>
<div class="alert alert-danger text-center" role="alert"><%=succMsg%>
 
</div>
<%
session.removeAttribute("succMsg");
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



   <form action="login" method="post">
    <div class="form-group mb-3 mt-3">
      <label for="name"><b>Username</b></label>
      <input type="text" class="form-control" id="email" placeholder="Enter Username" name="username">
    </div>
    <div class=" form-group mt-3 mb-5">
      <label for="desc"><b>Password</b></label>
      <input type="text" class="form-control" id="desc" placeholder="Enter your password" name="pass">
    </div>
    
    
 <div class="text-center">
    <button type="submit" class="btn btn-primary">Login</button></div>
  </form></div>




</div></div></div></div>
<div>
<%@include file="allcomp/footer.jsp"%>
</div>
</body>
</html>