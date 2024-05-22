<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.mvccheck.model.User" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
    table {
    font-family: arial, sans-serif;l̥
    border-collapse: collapse;
    width: 100%;
    }

  td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  }

  tr:nth-child(even) {
  background-color: #dddddd;
  }
  </style>
  </head>
  
  <body>
  <div class="container">  
  <br>
 <div class="d-flex justify-content-between ">
 <div class="d-inline-block"> <h2>Manage User</h2> </div>
<div class="float-end">
    <a href="/user" class="btn btn-primary">Add User</a>
    <a href="logout" class="btn btn-primary">Log Out</a>
</div>
</div>
<form class="example" action="/searchUser" method="post" style="text-align:right;">
  <input style="padding:2px;" type="text" placeholder="Search.." name="queryString">
  <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button>
</form>
<br>
<table class="table" >
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
    <th>Action</th>
  </tr>
  <tbody id="myTable">
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.userId}</td>
            <td>${user.userName}</td>
            <td>${user.email}</td> 
            <td>${user.password}</td> 
            <td>  
                <a href="/showUserDetail?userId=${user.userId}" class="btn btn-primary">Update</a>
                <a href="/deleteUser?userId=${user.userId}" class="btn btn-secondary">Delete</a>
            </td>
        </tr>
    </c:forEach>
</tbody>

</table>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script></body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js" integrity="sha512-GWzVrcGlo0TxTRvz9ttioyYJ+Wwk9Ck0G81D+eO63BaqHaJ3YZX9wuqjwgfcV/MrB2PhaVX9DkYVhbFpStnqpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</html>

