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
            <div class="m-3">
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
                    <button type="submit" class="btn btn-danger">
                      confirm
                    </button>
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
    <script src="js/scripts.js"></script>
  </body>
</html>
