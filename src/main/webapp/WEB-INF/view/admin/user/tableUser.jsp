<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!-- khi co context path thi can dung c:url de xac dinh dung duong dan -->
<!-- <link rel="stylesheet" href="<c:url value='/css/style.css' />" /> -->
<!-- <script src="<c:url value='/js/main.js' />"></script> -->

<!-- <link rel="stylesheet" href="/css/style.css" /> -->
<!-- <script src="/js/main.js"></script> -->

<!-- Latest compiled and minified CSS -->
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
  rel="stylesheet"
/>
<!-- Latest compiled JavaScript -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <link rel="stylesheet" href="/css/style.css" /> -->
    <script src="/js/main.js"></script>
    <title>userDetail ${id}</title>
  </head>
  <body>
    <div class="container mt-5">
      <div class="row">
        <div class="col-12">
          <div class="d-flex justify-content-between">
            <h3>Table User</h3>
            <a href="/admin/user/create" class="btn btn-primary">Create User</a>
          </div>
          <table class="table-hover table table-bordered mt-3">
            <thead>
              <tr>
                <th>ID</th>
                <th>Email</th>
                <th>Full Name</th>
                <Th>Action</Th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="user" items="${list}">
                <tr>
                  <th>${user.id}</th>
                  <td>${user.email}</td>
                  <td>${user.fullName}</td>
                  <td>
                    <a
                      href="/admin/user/view/${user.id}"
                      class="btn btn-success"
                      >View</a
                    >
                    <a
                      href="/admin/user/update/${user.id}"
                      class="btn btn-warning"
                      >Update</a
                    >
                    <a
                      href="/admin/user/delete/${user.id}"
                      class="btn btn-danger"
                      >Delete</a
                    >
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
