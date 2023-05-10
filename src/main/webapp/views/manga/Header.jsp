<%--
  Created by IntelliJ IDEA.
  User: beiu
  Date: 5/10/2023
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <title>Title</title>
    <link rel="stylesheet" href="/css/mangastyle.css">
</head>
<body>
<div style="background-color: #e2e2e2" class="header">
    <div class="ft_top" style="background-color: white">
        <div class="div_top">
            <div class="left_top">
                <p class="logo" style="font-size: 26px;margin-top: 5px">
                    <a href="/"><span style="color: red">C</span>MANGA</a>
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
                        <li><a class="dropdown-item" href="views/manga/Admin.jsp">Quản lý tài khoản</a></li>
                        <li><a class="dropdown-item" href="views/manga/AddManga.jsp">Thêm manga</a></li>
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
                        <a class="nav-link active" aria-current="page" id="add_manga" href="views/manga/AddManga.jsp">AddManga</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
</body>
</html>
