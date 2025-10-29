<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
  rel="stylesheet"
/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <div class="container m-3">
      <div class="row">
        <div class="col">
          <h1>User Details</h1>
          <hr />
          <div class="card" style="width: 60%">
            <div class="card-header">User information</div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Email: ${user.email}</li>
              <li class="list-group-item">Full Name: ${user.fullName}</li>
              <li class="list-group-item">Phone: ${user.phone}</li>
              <li class="list-group-item">Address: ${user.address}</li>
              <li class="list-group-item">Password: ${user.password}</li>
            </ul>
          </div>
          <a href="/admin/user" class="btn btn-success">Back</a>
        </div>
      </div>
    </div>
  </body>
</html>
