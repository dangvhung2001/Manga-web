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
<link href=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<head>
    <meta charset="UTF-8">
    <title>MangaInfo</title>
    <link rel="stylesheet" href="/css/mangastyle.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<!--    //Show manga information-->
<div class="content" style="height: auto !important;" id="mangaInfo">
    <div class="div_middle1" style="height: auto !important;width: 1200px;margin: 0 auto">
        <div class="main" style="height: auto !important;padding-bottom: 100px;">
            <div style="display: flex">
                <h2 class="truyen_tranh"><a href="" style="color: #3f94d5">Truyện tranh</a></h2>
                <h2 class="truyen_tranh" style="margin-left: 5px"> > </h2>
                <h2 class="truyen_tranh"><a href="" style="color: #3f94d5">vo luyen</a></h2>
            </div>

            <div class="book-detail">
                <div class="book_info" style="padding: 15px; position: relative">
                    <div class="book_avarta" >
                        <img src="../img/16546.jpg" style="height: 100%;width: auto">
                    </div>
                    <div class="book_other">
                        <p class="name" style=""> vo luyen</p>
                        <div class="kind">
                            <p class="p"><a class="a-kind" href="">Action</a></p>
                            <p class="p"><a class="a-kind" href="">Fantasy</a></p>
                            <p class="p"><a class="a-kind" href="">Manhua</a></p>
                            <p class="p"><a class="a-kind" href="">Shounen</a></p>
                            <p class="p"><a class="a-kind" href="">Supernatural</a></p>
                        </div>
                        <div class="book_info_detail">
                            <table style="width: 280px;text-align: left;border-collapse: collapse;border-spacing: 0">
                                <tbody>
                                <tr>
                                    <td><i class="bi bi-rss" >Tình trạng</i></td>
                                    <td>Đang tiến hành</td>
                                </tr>
                                <tr>
                                    <td><i class="bi bi-arrow-repeat">Cập nhật</i></td>
                                    <td>10h trước</td>
                                </tr>
                                <tr>
                                    <td><i class="bi bi-eye-fill">Lượt xem</i></td>
                                    <td>27,806,485</td>
                                </tr>
                                <tr>
                                    <td><i class="bi bi-bookmark-fill">Lượt theo dõi</i></td>
                                    <td>13,744</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="book_button"style="margin-top: 10px">
                            <button class="btn btn-success" ><i class="bi bi-book"></i>Đọc từ đầu</button>
                            <button class="btn btn-warning" ><a href="readManga.jsp" style="color: #f0f0f0"><i class="bi bi-book"></i>Đọc tiếp</a></button>
                            <button class="btn btn-danger"><i class="bi bi-bookmark-fill"></i>Theo dõi</button>
                            <button class="btn btn-secondary" onclick="baoLoi()"><i class="bi bi-exclamation-triangle"></i>Báo lỗi</button>
                            <button class="btn btn-primary" ><a class="bi bi-facebook" style="color: #f0f0f0" href="https://www.facebook.com/"></a>Share</button>
                        </div>
                    </div>
                </div>

                <h3><i class="bi bi-info-circle-fill" style="margin-right: 5px"></i>Giới thiệu</h3>
                <p><a href="" style="color: #3f94d5">Võ Luyện Đỉnh Phong</a> được cập nhật nhanh nhất và đầy đủ nhất tại Cmangavip.com . Bạn đọc đừng quên để lại bình luận và chia sẻ, ủng hộ Cmanga ra các chương mới nhất của truyện Võ Luyện Đỉnh Phong nhé.</p>
                <h3>
                    <i class="bi bi-list-ul" style="margin-right: 5px"></i>
                    Danh sách chương
                </h3>
                <div class="list_chapter">
                    <table id="table_list">
                        <thead>
                        <tr style="border-bottom: 1px solid #eaeaea">
                            <td style="width: 35%">Chapter</td>
                            <td style="width: 33%;text-align: center">Cập nhật</td>
                            <td style="width: 22%;text-align: center">Lượt xem</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td style="width: 35%"><a href="readManga.jsp">Chapter 2112</a></td>
                            <td style="width: 33%;text-align: center;color: #888888">29 phút trước</td>
                            <td style="width: 22%;text-align: center;color: #888888">172</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <h3><i class="bi bi-chat-fill" style="margin-right: 5px"></i><span style="margin-right: 5px">16,308</span>Bình luận</h3>
                <div class="book_comment" style="margin-bottom: 40px">
                    <div class="comment_text" style="position: relative;display: flex">
                        <textarea class="comment_text_value" placeholder="Nội dung bình luận..."></textarea>
                        <i class="bi bi-send" onclick=""></i>
                    </div>
                    <div class="comment-list">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="Footer.jsp"></jsp:include>
<!--//loginform-->
<!--<a class="btn btn-primary" role="button"  onclick="document.getElementById('id01').style.display='block'" >Đăng nhập</a>-->
<div id="id01" class="modal">

    <form class="modal-content animate" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="../img/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg" alt="Avatar" class="avatar">
        </div>
        <div class="container">
            <label class="alert alert-primary" style="color: red" id="checklogin"></label>
            <label ><b id="validate_username1">Tài khoản</b></label>
            <input type="text" placeholder="Nhập tài khoản" name="uname" id="username1" oninput="validate1()" required>

            <label ><b id="validate-password1">Mật khẩu</b></label>
            <input type="password" placeholder="Nhập mật khẩu" name="psw" id="password1" oninput="validate1()" required>

            <button class="btn btn-outline-success" type="button" onclick="login()">Đăng nhập</button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>
        <div class="container" style="background-color:#f1f1f1">
            <button style="color: #e2e2e2" type="button" onclick="document.getElementById('id01').style.display='none'"
                    class="cancelbtn">Hủy
            </button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>
<!--//Singupform-->
<div id="id02" class="modal">
    <form class="modal-content animate" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="../img/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label ><b id="validate_username">Tài khoản</b></label>
            <input type="text" placeholder="Nhập tài khoản" name="uname" id="username" oninput="validate()" required>

            <label ><b id="validate_password">Mật khẩu</b></label>
            <input type="password" placeholder="Nhập mật khẩu" name="psw" id="password" oninput="validate()" required>

            <label ><b id="validate_re">Nhập lại mật khẩu</b></label>
            <input type="password" placeholder="Nhập lại mật khẩu" name="rpsw" id="re-password" oninput="validate()"
                   required>

            <button class="btn btn-outline-success" type="button" onclick="register()">Đăng ký</button>
            <button class="btn btn-outline-success" type="button"
                    onclick="document.getElementById('id01').style.display='block'">Đăng nhập
            </button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>
        <div class="container" style="background-color:#f1f1f1">
            <button style="" type="button" onclick="document.getElementById('id02').style.display='none'"
                    class="cancelbtn">Hủy
            </button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>
</body>
<script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src=" https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="stylesheet" href=" https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
</html>