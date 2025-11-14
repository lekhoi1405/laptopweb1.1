<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- Latest compiled and minified CSS -->
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
  rel="stylesheet"
/>
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
      const avatarFile = $("#imageInput"); 
          avatarFile.change( (e) => { 
            const imgURL = URL.createObjectURL(e.target.files[0]); 
              $("#imagePreview").attr("src", imgURL); 
              $("#imagePreview").css({ "display": "block" }); 
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
            <h1 class="mt-4">Manage Products</h1>
            <ol class="breadcrumb mb-4">
              <a href="/admin">Dashboard</a>
              <li class="breadcrumb-item active">/product</li>
            </ol>
            
            <div class="mt-5">
              <div class="row justify-content-center">
                <div class="col-12 col-md-6">
                  <form:form
                    method="post"
                    action="/admin/product/create"
                    modelAttribute="product"
                    class="row g-3"
                    enctype="multipart/form-data"
                  >
                    <h1>Create a product</h1>
                    <hr />
                    <div class="col-12 col-md-6">
                      <label for="nameInput" class="form-label"
                        >Name:</label
                      >
                      <form:input
                        type="text"
                        class="form-control"
                        id="nameInput"
                        aria-describedby="emailHelp"
                        path="name"
                      />
                    </div>
                    <div class="col-12 col-md-6">
                      <label for="priceInput" class="form-label"
                        >Price:</label
                      >
                      <form:input
                        value = "0.0"
                        type="text"
                        class="form-control"
                        id="priceInput"
                        path="price"
                      />
                    </div>

                    <div class="col-12">
                      <label for="detailDescInput" class="form-label"
                        >Detail description:</label
                      >
                      <form:textarea
                        class="form-control" 
                        id="detailDescInput"
                        path = "detailDesc" 
                        />
                      <!-- <form:textarea
                        type="textrea"
                        class="form-control"
                        id="detailDescInput"
                        path="detailDesc"
                      /> -->
                    </div>

                    <div class="col-12 col-md-6">
                      <label for="shortDescInput" class="form-label"
                        >Short description:</label
                      >
                      <form:input
                        type="text"
                        class="form-control"
                        id="shortDescInput"
                        path="shortDesc"
                      />
                    </div>

                    <div class="col-12 col-md-6">
                      <label for="quantityInput" class="form-label"
                        >Quantity:</label
                      >
                      <form:input
                        value = "0"
                        type="number"
                        class="form-control"
                        id="quantityInput"
                        path="quantity"
                      />
                    </div>

                    <div class="col-12 col-md-6">
                      <label for="factoryInput" class="form-label">Factory:</label>
                      <form:select class="form-select" id="factoryInput" path="factory">
                        <form:option value="Apple">Apple</form:option>
                        <form:option value="Asus">Asus</form:option>
                        <form:option value="MSI">MSI</form:option>
                        <form:option value="Dell">Dell</form:option>
                      </form:select>
                    </div>

                    <div class="col-12 col-md-6">
                      <label for="targetInput" class="form-label">Target:</label>
                      <form:select class="form-select" id="targetInput" path="target">
                        <form:option value="Gaming">Gaming</form:option>
                        <form:option value="Office">Office</form:option>
                        <form:option value="AI">AI</form:option>
                      </form:select>
                    </div>

                    <div class="col-12 col-md-8">
                      <label for="imageInput" class="form-label"
                        >image:</label
                      >
                      <form:input
                        type="file"
                        class="form-control"
                        id="imageInput"
                        accept=".png,.jpg,.jpeg"
                        name ="imageProduct"
                        path=""
                      />
                    </div>

                    <div class="col-12">
                      <img style="max-height: 250px; display: none;" src="" alt="image preview"
                      id="imagePreview">
                    </div>

                    <div class="col-12">
                      <button type="submit" class=" btn btn-primary">
                      Submit
                    </button>
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
    <script src="js/scripts.js"></script>
  </body>
</html>
