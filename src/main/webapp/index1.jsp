
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Puma: Index</title>
<%@include file="allcomp/allcss.jsp" %>

<style type="text/css">
.back-img{
background: url("img1/pexels-lucas-pezeta-5402944.jpg");
height: 150vh;
width:100%;
background-repeat: no-repeat;
background-size: cover;
}
.back-img2{
background: url("img1/4bwR1nc-puma-logo-wallpaper.jpg");
height: 90vh;
width:100%;
background-repeat: no-repeat;
background-size: cover;
}


</style>
</head>
<body>
<%@include file="allcomp/nav.jsp" %>



<div class="container-fluid back-img">
<h4 class="animate-charcter col-md-12 text-center ">India's Leading Brand: Puma</h4>
<h5 class="animate-charcter col-md-12 text-center"><i>Puma builds quality – always has always will...!</i></h5></div>
<div class="container-fluid back-img2">
<h1 class="animate-charcter col-md-12 text-center"> Wear A Brand And Look Classy!</h1></div>

<%@include file="allcomp/footer.jsp"%>
</body>
</html>