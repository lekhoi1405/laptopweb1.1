<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%><%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
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
          <h1>Delete User with id: ${user.id}</h1>
          <hr />
          <div class="alert alert-danger">sure?</div>
          <a href="/admin/user" class="btn btn-success">Back</a>
          <form:form
            action="/admin/user/delete"
            method="post"
            modelAttribute="user"
          >
            <form:input type="hidden" path="id" />
            <button type="submit" class="btn btn-danger">confirm</button>
          </form:form>
        </div>
      </div>
    </div>
  </body>
</html>
