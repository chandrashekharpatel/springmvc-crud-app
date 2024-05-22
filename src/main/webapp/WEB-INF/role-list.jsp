<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.mvccheck.model.Role" %>

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
 <div class="d-inline-block"> <h2>Manage Role</h2> </div>
 <div class="d-inline-block float-end"><a href="/role" class="btn btn-primary" >Add Role</a> </div>
</div>
<form class="example" action="/searchRole" method="post" style="text-align:right;">
  <input style="padding:2px;" type="text" placeholder="Search.." name="queryString">
  <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button>
</form>
<br>
<table class="table" >
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Action</th>
  </tr>
  <tbody id="myTable">
    <c:forEach var="role" items="${roleList}">
    
  <tr>
    <td>${role.id}</td>
    <td>${role.name}</td>
    <td>  <a href="/showRoleDetail?id=${role.id}" class="btn btn-primary" >Update </a>
    <a href="/deleteRole?id=${role.id}" class="btn btn-secondary" >Delete</a>
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
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
   // alert(value);
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</html>

