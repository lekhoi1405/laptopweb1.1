<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>

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
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
      $(document).ready(() => {
        const avatarFile = $("#inputAvatar");
        const orgImage = "${user.avatar}";
        if(orgImage != null && orgImage != ""){
          const urlImage =  "/images/avatar/" + orgImage;
          $("#avatarPreview").attr("src", urlImage);
          $("#avatarPreview").css({ display: "block" });
        }

        avatarFile.change(function (e) {
          const imgURL = URL.createObjectURL(e.target.files[0]);
          $("#avatarPreview").attr("src", imgURL);
          $("#avatarPreview").css({ display: "block" });
        });
      });
    </script>
    <script
      src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp" />
    <div id="layoutSidenav">
      <jsp:include page="../layout/sidebar.jsp" />
      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid px-4">
            <h1 class="mt-4">Manage Users</h1>
            <ol class="breadcrumb mb-4">
              <a href="/admin">Dashboard</a>
              <li class="breadcrumb-item active">/Users</li>
            </ol>
            <div class="mt-5">
              <div class="row justify-content-center">
                <div class="col-12 col-md-6">
                  <form:form
                    method="post"
                    action="/admin/user/update"
                    modelAttribute="user"
                    class="row g-3"
                    enctype="multipart/form-data"
                  >
                    <h1>Update a user</h1>
                    <hr />
                    <div class="mb-3">
                      <label for="inputEmail" class="form-label"
                        >Email address:</label
                      >
                      <form:input
                        type="email"
                        class="form-control "
                        id="exampleInputEmail1"
                        aria-describedby="emailHelp"
                        path="email"
                        readonly = "true"
                      />
                    </div>
                    <div class="" style="display: none">
                      <label for="inputId" class="form-label">Id</label>
                      <form:input
                        type="text"
                        class="form-control"
                        id="exampleInputId"
                        path="id"
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
                      <label for="inputFullName" class="form-label"
                        >Full name:</label
                      >
                      <c:set var="fullNameHasBindError"> 
                        <form:errors path="fullName" /> 
                      </c:set> 
                      <form:input type="fullName" id="inputFullName"
                        class="form-control ${not empty fullNameHasBindError? 'is-invalid':''}" 
                        path="fullName" /> 
                      <form:errors path="fullName" cssClass="invalid-feedback" />
                    </div>

                    <div class="mb-3">
                      <label for="inputAddress" class="form-label"
                        >Address:</label
                      >
                      <form:input
                        type="text"
                        class="form-control"
                        id="inputAddress"
                        path="address"
                      />
                    </div>
                    <div class="col-12 col-md-4">
                      <label for="inputRole" class="form-label">Role:</label>
                      <form:select
                        class="form-select"
                        id="inputRole"
                        path="role.name"
                      >
                        <form:option value="Admin">Admin</form:option>
                        <form:option value="User">User</form:option>
                      </form:select>
                    </div>

                    <div class="col-12 col-md-8">
                      <label for="inputAvatar" class="form-label"
                        >Avatar:</label
                      >
                      <form:input
                        type="file"
                        class="form-control"
                        id="inputAvatar"
                        accept=".png,.jpg,.jpeg"
                        name="userAvatarFile"
                        path=""
                      />
                    </div>

                    <div class="col-12">
                      <img style="max-height: 250px; display: NONE;" alt="avatar preview"
                      id="avatarPreview">
                    </div>
                    
                    <div class="col-12 d-flex justify-content-between">
                      <a href="/admin/user" class="btn btn-success align-items-center col-2">Back</a>
                      <button type="submit" class="btn btn-danger align-items-center col-2">Update</button>
                    </div>
                  </form:form>
                </div>
              </div>
            </div>
          </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
    <script src="/js/scripts.js"></script>
  </body>
</html>
