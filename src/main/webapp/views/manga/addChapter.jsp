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
<meta charset="UTF-8">
<title>AddManga</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">

<head>
    <script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/mangastyle.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
    <div class="row">
        <div class="rounded col-12" style="background-color: #dc4d4d; text-align: center; margin: 20px 20px 20px 20px">
            <div class="btn-change">
                <div>
                    <progress value="0" max="100" id="uploader">0%</progress>
                    <input type="file" value="upload" accept=".jpg" id="fileButton" multiple>
                </div>
                <div>
                    <button onclick="createImgChap()"
                            style="border-radius: 25%;background-color: #888888;color: #f0f0f0;border-color: #dc4d4d">Thêm
                    </button>
                    <button style="border-radius: 25%;background-color: #888888;color: #f0f0f0;border-color: #dc4d4d">
                        <a href="readManga.jsp">
                        Demo</a>
                    </button>
                </div>
            </div>
            <table class="table" style="">
                <tr class="table-primary">
                    <th>STT</th>
                    <th>Hình ảnh</th>
                    <th class="btn-change">EDIT</th>
                    <th class="btn-change">DELETE</th>
                </tr>
                <tbody id="drawTable" ></tbody>
            </table>
        </div>
        <div ></div>
    </div>
</div>
</body>
<script src="../upload/upload_fileImg.js"></script>

</html>