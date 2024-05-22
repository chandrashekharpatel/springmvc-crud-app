
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Create Role Form</h2>
        <form action="/submitForm" method="post">
            <div class="form-group">
                <label for="id">ROLE ID:</label>
                <input type="text" class="form-control" id="id" name="id">
            </div>
            <div class="form-group">
                <label for="name">ROLE Name:</label>
                <input type="text" class="form-control" id="name" name="name">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
