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
<link href=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<head>
    <meta charset="UTF-8">
    <title>Đọc truyện</title>
    <link rel="stylesheet" href="/css/mangastyle.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="content" style="height: auto !important;">
    <div class="div_middle1" style="height: auto !important;width: 1200px;margin: 0 auto">
        <div class="main" style="height: auto !important;padding-bottom: 100px;">
            <div style="display: flex">
                <h2 class="truyen_tranh"><a href="" style="color: #3f94d5">Truyện tranh</a></h2>
                <h2 class="truyen_tranh" style="margin-left: 5px"> > </h2>
                <h2 class="truyen_tranh"><a href="" style="color: #3f94d5">Võ Luyện Đỉnh Phong</a></h2>
                <h2 class="truyen_tranh"><a href="" style="color: #3f94d5">Chương 2895</a></h2>
            </div>
            <div id="chapter_content">
                <div class="change_server" style="text-align: center;margin-bottom: 20px;margin-top: 20px">
                    <button type="button" class="btn btn-primary" id="change_server">Đổi server ảnh</button>
                </div>
                <div class="chapter_content" id="read_chapter">
                    <h1 style="font-size: 25px;font-weight: 600;line-height: 35px;">Chapter 2895</h1>
                    <div class="chapter_pic" id="chapter_pic">

                    </div>
                </div>
                    <div class="chapter_control"  id="chapter_control">
                        <div style="align-items: center"><a href="../index.jsp"><p style="font-size: 25px;font-weight: bold">Trang chủ</p>
                        </a></div>
                        <div class="change_chapter">
                            <button class="previous_chapter"><i class="bi bi-chevron-left"></i></button>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Chapter 2895</option>
                                <option value="1"> One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <button class="next_chapter"><i class="bi bi-chevron-right"></i></button>
                        </div>
                    </div>
                    <div style="background-color: white;padding: 20px">
                        <h3 style="text-align: left"><i class="bi bi-chat-fill" style="margin-right: 5px"></i><span
                                style="margin-right: 5px">0</span>Bình luận</h3>
                        <div class="book_comment" style="margin-bottom: 40px">
                            <div class="comment_text" style="position: relative;">
                                <textarea class="comment_text_value" id="area_text"
                                          placeholder="Nội dung bình luận..."></textarea>
                                <i class="bi bi-send" onclick="createCommentt()"></i>
                            </div>
                            <div class="comment-list">
                                <p id="comment_list" style="float: left;font-size: large">

                                </p>
                                <p>1<i class="bi bi-chat-right-dots-fill"></i>
                                    ok:
                                    hay</p>
                            </div>
                        </div>
                    </div>

            </div>
        </div>
    </div>
</div>

<!--//loginform-->
<!--<a class="btn btn-primary" role="button"  onclick="document.getElementById('id01').style.display='block'" >Đăng nhập</a>-->
<jsp:include page="LoginForm.jsp"></jsp:include>
<!--//Singupform-->
<jsp:include page="ResignModal.jsp"></jsp:include>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
<script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src=" https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
<link rel="stylesheet" href=" https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
</html>