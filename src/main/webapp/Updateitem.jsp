<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Puma:Updateitems</title>
<%@include file="allcomp/allcss.jsp" %>
</head>
<body style="background-color: black">
<%@include file="allcomp/nav.jsp" %>
<div class="container mt-4">
<div class="row p-5">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">

<h3 class="text-center text-success"> Add Items From Here!</h3>

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



   <form action="update_items" method="post" enctype="multipart/form-data">
    <div class="form-group mb-3 mt-3">
      <label for="name">ItemName:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter item name" name="nameit">
    </div>
    <div class=" form-group mb-3">
      <label for="desc">Description:</label>
      <input type="text" class="form-control" id="desc" placeholder="Enter description" name="descri">
    </div>
    
    <div class="form-group mb-3">
      <label for="price">Price:</label>
      <input type="text" class="form-control" id="price" placeholder="Enter price" name="money">
    </div>
    
    <div class="form-group mb-3">
      <label for="inputstatus">Status</label>
      <select id="inputstatus" class="form-control" name="status">
      <option selected>---select---</option>
      <option value="Pending">Pending</option>
      <option value="Compelete">Compelete</option>
      </select>
    </div>
    
    
  <div class="form-group mb-3">
    
      <label for="photo1">Upload Picture : </label>
    
    
      <input type="file" id="photo1" name="photo" placeholder="Photo of the item..">
   
  </div>
  
    
 <div class="text-center">
    <button type="submit" class="btn btn-primary">Submit</button></div>
  </form></div>




</div></div></div></div>

</body>
</html>