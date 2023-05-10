<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/5/2023
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
  <link rel="stylesheet" href="/css/mangastyle.css">

</head>
<body>
<Header/>
<jsp:include page="Header.jsp"></jsp:include>

<div class="container">
  <div class="row">
    <div
            class="rounded col-12"
            style="
            background-color: #dc4d4d;
    text-align: center;
    margin: 20px 20px 20px 20px"
    >

    <table class="table" style={{}}>
      <thead>
      <tr class="table-primary">
        <th>STT</th>
        <th>ID</th>
        <th>EMAIL</th>
        <th>NAME ACCOUNT</th>
        <th>PASSWORD</th>
        <th class="btn-change">ACTION</th>
      </tr>
      </thead>
      <tbody id="drawTable">
      {elementListUser}
      </tbody>
    </table>
  </div>
  <div />
</div>
</div>
<div>
  <Footer />
</div>
<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>