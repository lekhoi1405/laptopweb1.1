<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    hello from jsp from new window
    <h1><%=request.getAttribute("eric")%></h1>
     <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
     <h5>${meomeoemeo}</h5>
</body>
</html>