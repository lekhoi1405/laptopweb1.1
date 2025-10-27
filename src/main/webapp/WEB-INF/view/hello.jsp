<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!-- khi co context path thi can dung c:url de xac dinh dung duong dan -->
<!-- <link rel="stylesheet" href="<c:url value='/css/style.css' />" /> -->
<!-- <script src="<c:url value='/js/main.js' />"></script> -->

<!-- <link rel="stylesheet" href="/css/style.css" /> -->
<!-- <script src="/js/main.js"></script> -->

<!-- Latest compiled and minified CSS -->
<!-- <link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
  rel="stylesheet"
/> -->
<!-- Latest compiled JavaScript -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/style.css" />
    <script src="/js/main.js"></script>
    <title>Document</title>
  </head>
  <body>
    hello from jsp from new window
    <h1><%=request.getAttribute("user")%></h1>
    <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
    <h5>${user.email}</h5>
    <button>submit</button>
  </body>
</html>
