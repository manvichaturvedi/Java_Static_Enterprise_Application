<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.entity.Cart"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
<%@include file="allcomp/allcss.jsp" %>
</head>
<body style="background-color: black;">
<%@include file="allcomp/nav.jsp" %>
<div class="container">
<div class="row p-3">
<div class="col-md-6">
<div class="card bg-white">
<div class="card-body">
<h3 class="text-center text-success">Your Selected Item</h3>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Item Name</th>
      <th scope="col">Desc</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
  dao.getItemByUser(userId);
  %>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
   
  </tbody>
</table>
</div>
</div></div></div>

<div class="col-md-6">
<div class="card">
<div class="card-body">
<h3 class="text-center text-success">Your details for order</h3>
<form>
<div class="form-row">
  <div class="form-group col-md-6">
    <input type="text" class="form-control" placeholder="First name" aria-label="First name">
  </div>
  <div class="form-group col-md-6">
    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">
  </div>
</div>
  <div class="form-group col-md-6">
    <input type="text" class="form-control" placeholder="First name" aria-label="First name">
  </div>
  <div class="form-group col-md-6">
    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">
  </div>
</div>
  <div class="form-group col-md-6">
    <input type="text" class="form-control" placeholder="First name" aria-label="First name">
  </div>
  <div class="form-group col-md-6">
    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">
  </div>
</div>
</form>


</div></div></div></div>

</body>
</html>