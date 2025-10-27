<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <link rel="stylesheet" href="/css/style.css" />
    <script src="/js/main.js"></script> -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <title>Document</title>
  </head>
  <body>
    <div class="mt-5 container">
      <div class="row justify-content-center">
        <div class="col-12 col-md-6">
          <form:form
            method="post"
            action="/admin/user/create"
            modelAttribute="user"
          >
            <h1>Create a user</h1>
            <hr />
            <div class="mb-3">
              <label for="inputEmail" class="form-label">Email address:</label>
              <form:input
                type="email"
                class="form-control"
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                path="email"
              />
              <!-- <div id="emailHelp" class="form-text">
            We'll never share your email with anyone else.
          </div> -->
            </div>
            <div class="mb-3">
              <label for="inputPassword" class="form-label">Password:</label>
              <form:input
                type="password"
                class="form-control"
                id="exampleInputPassword1"
                path="password"
              />
            </div>

            <div class="mb-3">
              <label for="inputPhoneNumber" class="form-label"
                >Phone number:</label
              >
              <form:input
                type="tel"
                class="form-control"
                id="inputPhoneNumber"
                path="phone"
              />
            </div>

            <div class="mb-3">
              <label for="inputFullName" class="form-label">Full name:</label>
              <form:input
                type="text"
                class="form-control"
                id="inputFullName"
                path="fullName"
              />
            </div>

            <div class="mb-3">
              <label for="inputAddress" class="form-label">Address:</label>
              <form:input
                type="text"
                class="form-control"
                id="inputAddress"
                path="address"
              />
            </div>

            <!-- <div class="mb-5 form-check">
              <input
                type="checkbox"
                class="form-check-input"
                id="exampleCheck1"
              />
              <label class="form-check-label" for="exampleCheck1"
                >Check me out</label
              >
            </div> -->
            <button type="submit" class="btn btn-primary">Submit</button>
          </form:form>
        </div>
      </div>
    </div>
  </body>
</html>
