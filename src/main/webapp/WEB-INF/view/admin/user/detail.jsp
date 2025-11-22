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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
      $(document).ready(() => {
        const orgImage = "${user.avatar}";

        // Kiểm tra null hoặc rỗng
        if (orgImage && orgImage.trim() !== "") {
          // 1. Nối chuỗi đúng cú pháp
          const urlImage = "/images/avatar/" + orgImage;

          // 2. Tạo HTML trực tiếp (Nhanh và gọn hơn clone)
          // Lưu ý: Đã xóa 'display: none' để ảnh hiện ra
          const newLi = `
        <li class="list-group-item">
            <img style="max-height: 250px; display : block"  alt="avatar preview" src="\${urlImage}" />
        </li>
      `;

          // 3. Append vào đúng thẻ ul bên trong .card
          $(".card .list-group").append(newLi);
        }
      });
    </script>
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
                  <h1>User Details</h1>
                  <hr />
                  <div class="card" style="width: 60%">
                    <div class="card-header">User information</div>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item">${user.email}</li>
                      <li class="list-group-item">
                        Full Name: ${user.fullName}
                      </li>
                      <li class="list-group-item">Phone: ${user.phone}</li>
                      <li class="list-group-item">Address: ${user.address}</li>
                      <li class="list-group-item">Avatar: ${user.avatar}</li>
                      <li class="list-group-item">Role: ${user.role.name}</li>
                      <!-- <li class="list-group-item">
                        <img
                          style="max-height: 250px; display: block"
                          alt="avatar preview"
                          id="avatarPreview"
                          src="/images/avatar/${user.avatar}"
                        />
                      </li> -->
                      <!-- <li class="list-group-item">
                        Password: ${user.password}
                      </li> -->
                    </ul>
                  </div>
                  <a href="/admin/user" class="btn btn-success">Back</a>
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
