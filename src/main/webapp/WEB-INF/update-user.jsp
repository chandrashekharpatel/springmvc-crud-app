<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container mt-5">
        <h2>Update User</h2>
        <form action="/updateUser" method="post">
            <div class="form-group">
                <input id="userId" name="userId" type="hidden" value="${user.userId}">
            </div>
            <div class="form-group">
                <label for="userName">User Name:</label>
                 <input type="text" class="form-control" id="userName" name="userName" value="${user.userName}">
            </div>
             <div class="form-group">
                <label for="email">Email:</label>
                 <input type="text" class="form-control" id="email" name="email" value="${user.email}">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                 <input type="text" class="form-control" id="password" name="password" value="${user.password}">
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Save</button>
            <a href="/user-list" class="btn btn-primary"> Cancel</a>
        </form>
</div>
</body>
</html>

