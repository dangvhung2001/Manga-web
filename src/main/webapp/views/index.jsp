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
    <title>Trang Chủ</title>
    <link rel="stylesheet" href="/css/mangastyle.css">
</head>
<body>
<div style="background-color: #e2e2e2" class="header">
    <div class="ft_top" style="background-color: white">
        <div class="div_top">
            <div class="left_top">
                <p class="logo" style="font-size: 26px;margin-top: 5px">
                    <a href="index.jsp"><span style="color: red">C</span>MANGA</a>
                </p>

                <div>
                    <button class="btn btn-outline-danger light-dark"
                            onclick="switchLightMode()"
                            id="light-dark"
                            title="Chế độ sáng tối">
                        <i class="bi bi-lightbulb-off-fill"></i>
                    </button>
                </div>
                <div class="d-flex align-items-center"
                     style="border: 1px solid #cccccc;
                     border-radius: 50px;color: #757575;
                     padding: 0 10px 0 20px;
                     height: 44px;
                     margin-top: 5px">
                    <input class="form-control me-2" style="border: none"  id="search" placeholder="Truyện bạn muốn tìm">
                    <button onclick="searchManga()"
                            style="border: none;background-color: white">
                        <i class="bi bi-search " style="color: #dc4d4d;margin-left: 30px" ></i></button>
                </div>
            </div>
            <div class="right-top" style="text-align: center;margin-top: 10px">
                <button class="btn btn-primary" id="login"
                        onclick="document.getElementById('id01').style.display='block'">Đăng nhập</button>
                <button class="btn btn-primary" id="register"
                        onclick="document.getElementById('id02').style.display='block'">Đăng ký</button>
                <div class="dropdown" id="dropdown">
                    <img
                            src="/image/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg"
                            alt="Avatar"
                            class="avatar"
                    />
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                            data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown button
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#" onclick="document.getElementById('id03').style.display='block'">Đổi mật khẩu</a></li>
                        <li><a class="dropdown-item" href="/manga/Admin.jsp">Quản lý tài khoản</a></li>
                        <li><a class="dropdown-item" href="manga/AddManga.jsp">Thêm manga</a></li>
                        <li><a class="dropdown-item" href="#" onclick="logout()">Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid" style="margin-left: 345px">
            <a class="navbar-brand" href="#">CGame</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item" style="">
                        <a class="nav-link active" aria-current="page" href="#">Raw</a>
                    </li>
                    <li class="nav-item dropdown" style="margin-left: 40px">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            Thể loại
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item" style="">
                        <a class="nav-link active" aria-current="page" id="add_manga" href="manga/AddManga.jsp">AddManga</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div class="middle">
    <div class="left-mid">
        <div style="margin-left: 140px" class="">
            <div class="chat">
                <div style="display: flex;position: relative;justify-content: space-between;" >
                    <div><button type="button" class="btn btn-outline-success">Tổng</button>
                        <button type="button" class="btn btn-outline-success">Chợ</button>
                        <button type="button" class="btn btn-outline-success">Tuyển</button></div>
                    <div><button type="button" class="btn btn-outline-danger"
                                 style="border-radius: 75px"><i class="bi bi-window-stack"></i></button>
                        <button type="button" class="btn btn-outline-danger" title="Mở Rộng Tiện ích"
                                style="border-radius: 75px"><i class="bi bi-menu-up"></i></button>
                        <button type="button" class="btn btn-outline-danger" style="border-radius: 75px;margin-right: 15px"><i
                                class="bi bi-volume-up-fill"></i></button></div>

                </div>
            </div>
            <div id="box_chat" class="box_chat_home">
                <div class="chat_div" id="">
                    <h3 id="chat_div"></h3>
                </div>
            </div>
                <div class="chat_add" style="position: relative ; display: flex">
                    <input id="chat_text" type="text" placeholder="Bạn muốn nhắn điều gì...">
                    <div>
                        <button id="cricle"><i onclick="createCommentt()" class="bi bi-arrow-down-square-fill"></i>
                        </button>
                    </div>
                </div>

        </div>
        <div class="slideshow-container" style="width: 88.5%;margin-left: 140px">

            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="https://img.thuthuatphanmem.vn/uploads/2018/10/24/cute-wallpaper-christmas-3d_102459114.jpg" style="width:100%">
                <div class="text">Chào Mừng Bạn</div>

            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="https://vanhoadoisong.vn/wp-content/uploads/2022/10/100-wallpaper-anh-anime-attack-on-titan-full-hd-may-tinh-dien-thoai-6.jpg" style="width: 100%">
                <div class="text">Đến với</div>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="/image/269606726_5183372668393712_3212239021897675904_n.jpg" style="width:100%">
                <div class="text">CMANGA</div>

            </div>
            <div style="text-align:center">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
        </div>
<!--        // Slide show script-->
        <script>

            let slideIndex = 0;
            showSlides();

            function showSlides() {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                let dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1}
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block";
                dots[slideIndex-1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>

        <div class="gnc" style="display: flex ; justify-content: space-between">
            <div >
            <h3 style="margin-left: 140px;color: red"><i class="bi bi-arrow-repeat"></i>Truyện mới cập nhật</h3>
                </div>
            <div style="padding-top: 15px">
                <button type="button" class="btn btn-outline-danger" style="border-radius: 75px"><i
                        class="fa fa-child"></i></button>
                <button type="button" class="btn btn-outline-danger" style="border-radius: 75px"><i
                        class="bi bi-list-task"></i></button>
                <button type="button" class="btn btn-outline-danger" style="border-radius: 75px"><i
                        class="bi bi-funnel-fill"></i></button>
            </div>
        </div>
        <div class="grid" id="listComic">
            <div class="grid_item">
                <div class="book-avarta">
                    <a href="/test" >
                        <img src="/image/choido.jpg" class="image">
                    </a>
                    <div class="book-details">
                        <i class="bi bi-eye-fill"></i>
                        428,1k
                        <i class="bi bi-bookmark-fill"></i>
                        728
                    </div>
                </div>
                <div class="book-info" style="margin-top: 10px">
                    <div class="book-name">
                        <a title="manga" href="" >vo luyen dinh phong</a>
                    </div>
                    <div class="last-chapter">
                        <a href="manga/readManga.jsp">Chapter 2012</a>
                    </div>
                </div>

            </div>
            <div class="grid_item">
                <div class="book-avarta">
                    <a href="manga/mangainfo.jsp" >
                        <img src="/image/choido.jpg" class="image">
                    </a>
                    <div class="book-details">
                        <i class="bi bi-eye-fill"></i>
                        428,1k
                        <i class="bi bi-bookmark-fill"></i>
                        728
                    </div>
                </div>
                <div class="book-info" style="margin-top: 10px">
                    <div class="book-name">
                        <a title="manga" href="" >vo luyen dinh phong</a>
                    </div>
                    <div class="last-chapter">
                        <a href="manga/readManga.jsp">Chapter 2012</a>
                    </div>
                </div>

            </div>
        </div>

        <div
                class="page-direct"
                style="display: flex; justify-content: center "
        >
        <div>
            <button class="btn btn-outline-danger light-dark">1</button>
        </div>
        <div>
            <button class="btn btn-outline-danger light-dark">2</button>
        </div>
        <div>
            <button class="btn btn-outline-danger light-dark">3</button>
        </div>
        <div>
            <button class="btn btn-outline-danger light-dark">4</button>
        </div>
    </div>

    </div>

    <div class="right-mid">

        <div class="menu-right" style="height: auto;width: 304px;margin-top: 40px">
            <div class="top" style="display: flex;justify-content: space-between">
                <button type="button" class="btn btn-outline-primary">Top Ngày</button>
                <button type="button" class="btn btn-outline-primary">Top Tuần</button>
                <button type="button" class="btn btn-outline-primary">Top Tổng</button>
            </div>
            <div class="manga_top">
                <div style="display: flex;align-items: center;border-bottom: 1px solid black">
                    <div class="stt" style="width: 30px;font-size: 30px">1</div>
                    <div class="book-avarta1"><img style="width: 60px;height: 75px;" src="/image/voluyendinhphng.jpg"
                                                   height="342" width="250"/></div>
                    <div class="detail">
                        <div class="name"><a href="manga/mangainfo.jsp">Võ Luyện Đỉnh Phong</a></div>
                        <div class="chapter">Chapter 2889</div>
                        <div class="total-view" style="margin-left: 100px"><i class="bi bi-eye-fill"></i>17,904
                        </div>
                    </div>
                </div>
                <!--                <hr style="margin-top: 10px">-->
                <div style="display: flex;align-items: center;border-bottom: 1px solid black">
                    <div class="stt" style="width: 30px;font-size: 30px">2</div>
                    <div class="book-avarta1"><img style="width: 60px;height: 75px;" src="/image/nhanvatphandien.jpg"
                                                   height="342" width="250"/></div>
                    <div class="detail">
                        <div class="name"><a href="">Nhân Vật Phản Diện</a></div>
                        <div class="chapter">Chapter 289</div>
                        <div class="total-view" style="margin-left: 100px"><i class="bi bi-eye-fill"></i>8,904</div>
                    </div>
                </div>
                <!--                <hr style="margin-top: 10px">-->
                <div style="display: flex;align-items: center">
                    <div class="stt" style="width: 30px;font-size: 30px">3</div>
                    <div class="book-avarta1"><img style="width: 60px;height: 75px;" src="/image/choido.jpg"
                                                   height="342" width="250"/></div>
                    <div class="detail">
                        <div class="name"><a href="">Vừa Chơi Đã Có Tài</a></div>
                        <div style="color: #cccccc">Chapter 28</div>
                        <div class="total-view" style="margin-left: 100px;color: #cccccc"><i
                                class="bi bi-eye-fill"></i>7,904
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <p><a id="xem_them" href="">Xem thêm...</a></p>
            </div>
            <!--            //toptrans-->
            <div class="top-trans" style="display: flex">
                <button type="button" class="btn btn-outline-primary">Top nhóm dịch</button>
                <button type="button" class="btn btn-outline-primary">Top phiếu tháng</button>
            </div>
            <div class="trans_top">
                <div style="display: flex;align-items: center;border-bottom: 1px solid black">
                    <div class="stt" style="width: 30px;font-size: 30px">1</div>
                    <div class="book-avarta1"><img style="width: 60px;height: 75px;" src="/image/Đầutroc.jpg"
                                                   height="342" width="250"/></div>
                    <div class="detail">
                        <div class="name"><a href="">Quần què CMANGA</a></div>
                        <div class="chapter">Đã dịch 148 truyện</div>
                        <div class="total-view" style="margin-left: 100px"><i class="bi bi-eye-fill"></i>170,441
                        </div>
                    </div>
                </div>
                <!--            <hr style="margin-top: 10px">-->
                <div style="display: flex;align-items: center;border-bottom: 1px solid black">
                    <div class="stt" style="width: 30px;font-size: 30px">2</div>
                    <div class="book-avarta1"><img style="width: 60px;height: 75px;" src="/image/manhwahoi.jpg"
                                                   height="342" width="250"/></div>
                    <div class="detail">
                        <div class="name"><a href="https://cmangaac.com/vo-luyen-dinh-phong-189">Manhwa Hội</a>
                        </div>
                        <div class="chapter">28 truyện</div>
                        <div class="total-view" style="margin-left: 100px"><i class="bi bi-eye-fill"></i>17,904
                        </div>
                    </div>
                </div>
                <!--            <hr style="margin-top: 10px">-->
                <div style="display: flex;align-items: center">
                    <div class="stt" style="width: 30px;font-size: 30px">3</div>
                    <div class="book-avarta1"><img style="width: 60px;height: 75px;" src="/image/ocgiakim.jpg"
                                                   height="342" width="250"/></div>
                    <div class="detail">
                        <div class="name"><a href="https://cmangaac.com/vo-luyen-dinh-phong-189">Ốc giả kim</a>
                        </div>
                        <div style="color: #cccccc" class="chapter">27 truyện</div>
                        <div class="total-view" style="margin-left: 100px;color: #cccccc"><i
                                class="bi bi-eye-fill"></i>17,904
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <p><a id="xem_them1" href="">Xem thêm...</a></p>
            </div>
        </div>
    </div>
</div>
</div>

<!--//bottom-->
<footer class="bottom">
    <div class="div_bottom" >
        <div class="left-bottom">
            <p class="logo" style="font-size: 30px">
                <a href="index.jsp"><span style="color: red">C</span>MANGA</a>
            </p>
            <div>
                <p>Luôn cập nhật liên tục các bộ truyện mới, truyện VIP để phục vụ độc giả<br>
                    Đọc truyện hoàn toàn miễn phí, hỗ trợ đa thiết bị.</p>
            </div>
            <div>
                <p>Email khiếu nại:cmangadotcom@gmail.com
                    <br>
                    <a>Giới thiệu</a>
                    <a>Liên hệ</a>
                    <a>Chính sách </a>
                    <br>
                    Copyright © 2020 CMANGAVIP.COM
                </p>
            </div>
        </div>
        <div class="right-bottom">
            <ul>
                <li><a href="">Truyện tranh ngôn tình</a></li>
                <li><a href="">manhwa</a></li>
                <li><a href="">manhua</a></li>
                <li><a href="">Đam mỹ</a></li>
                <li><a href="">yaoi</a></li>
                <li><a href="">Ngôn tình</a></li>
                <li><a href="">Cổ đại</a></li>
                <li><a href="">Chuyển sinh</a></li>
                <div class="clear"></div>
            </ul>
            <p>Mọi thông tin và hình ảnh trên website đều được sưu tầm trên Internet. Chúng tôi không sở hữu hay chịu
                trách nhiệm bất kỳ thông tin nào trên web này. Nếu làm ảnh hưởng đến cá nhân hay tổ chức nào, khi được
                yêu cầu, chúng tôi sẽ xem xét và gỡ bỏ ngay lập tức.</p>
        </div>
    </div>
</footer>

<!--//loginform-->
<div id="id01" class="modal">

    <form class="modal-content animate" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="/image/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg" alt="Avatar" class="avatar">
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
            <img src="/image/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg" alt="Avatar" class="avatar">
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

<!--//ChangePasswordform-->
<div id="id03" class="modal">
    <form class="modal-content animate" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="/image/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label ><b class="validate_up">Cập nhật mật khẩu</b></label>
            <input type="password" class="update_pass" placeholder="Nhập mật khẩu" name="sw" oninput=""
                   required>
            <label >
                <b class="validate_up">Nhập lại mật khẩu</b>
            </label>
            <input
                    type="password"
                    class="update_pass"
                    placeholder="Nhập lại mật khẩu"
                    name="rpsw"
                    required=""
            />
            <button class="btn btn-outline-success" type="button" onclick="findByPassword()"     >Đổi mật khẩu</button>
        </div>
        <div class="container" style="background-color:#f1f1f1">
            <button style="" type="button" onclick="document.getElementById('id03').style.display='none'"
                    class="cancelbtn">Hủy
            </button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<style>
    * {box-sizing: border-box;}
    body {font-family: Verdana, sans-serif;}
    .mySlides {display: none;}
    img {vertical-align: middle;}

    /* Slideshow container */
    .slideshow-container {

        width: 71%;
        position: relative;
        margin: auto;
    }

    /* Caption text */
    .text {
        color: #dc4d4d;
        font-size: 35px;
        padding: 8px 12px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
    }

    /* Number text (1/3 etc) */
    .numbertext {
        color: #f2f2f2;
        font-size: 12px;
        padding: 8px 12px;
        position: absolute;
        top: 0;
    }

    /* The dots/bullets/indicators */
    .dot {
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
    }
    
    /* Fading animation */
    .fade {
        animation-name: fade;
        animation-duration: 1.5s;
    }

    @keyframes fade {
        from {opacity: .4}
        to {opacity: 1}
    }

    /* On smaller screens, decrease text size */
    @media only screen and (max-width: 300px) {
        .text {font-size: 11px}
    }
</style>
</html>