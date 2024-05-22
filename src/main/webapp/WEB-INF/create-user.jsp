<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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

    <!-- Custom Alert Modal -->
    <div class="modal fade" id="customAlertModal" tabindex="-1" role="dialog" aria-labelledby="customAlertModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="customAlertModalLabel">Validation Alert</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p id="customAlertMessage"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <h2> Registration Form !</h2><br>
        <form id="registrationForm" action="/createUser" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="userName">Name:</label>
                <input type="text" class="form-control"  placeholder="Enter user name.." id="userName" name="userName">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <div class="form-group">
                <label for="roleSelect">Select Role:</label>
                <select class="form-control" id="roleSelect" name="roleSelect">
                    <c:forEach var="role" items="${lists}">
                        <option value="${role.id}">${role.name}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script>
        function validateForm() {
            var userName = document.getElementById("userName").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            
            var error="";
            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            if(userName.trim() === ""){
                error="Please enter a valid name";
            } else if(!emailRegex.test(email)){
                error ="Please enter a valid email";
            } else if(password.length < 6){
                error = "Password must be at least 6 characters long";
            }

            if (error !== '') {
                $('#customAlertMessage').text(error);
                $('#customAlertModal').modal('show');
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
