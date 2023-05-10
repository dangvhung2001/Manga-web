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
<head>
    <meta charset="UTF-8">
    <title>AddManga</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>


    <!--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>-->
    <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
    <link rel="stylesheet" href="/css/mangastyle.css">
    <script src="Manga.js"></script>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
    <div class="row">
        <div class="rounded col-12" style="background-color: #dc4d4d; text-align: center; margin: 20px 20px 20px 20px">
            <div class="btn-change">
            <div>
                <progress value="0" max="100" id="uploader">0%</progress>
                <input type="file" value="upload" accept=".jpg" id="fileButton">
            </div>
            <div class="input-group mb-3">
                <input id="name" type="text" class="form-control" placeholder="Nhập tên">
                <span class="input-group-mb-3"></span>
            </div>
            <div>
                <input id="chapter" type="text" class="form-control" placeholder="Nhập chapter">
                <span class="input-group-mb-3"></span>
            </div>

            <div>
                <input id="status" type="text" class="form-control" placeholder="Nhập trạng thái">
            </div>
            <div>
                <button onclick="createManga()"
                        style="border-radius: 25%;background-color: #888888;color: #f0f0f0;border-color: #dc4d4d">Thêm
                </button>
            </div>
        </div>
            <table class="table" style="">
                <tr class="table-primary">
                    <th>STT</th>
                    <th>Hình ảnh</th>
                    <th>NAME</th>
                    <th>Chapter</th>
                    <th>STATUS</th>
                    <th class="btn-change">EDIT</th>
                    <th class="btn-change">DELETE</th>
                </tr>
                <tbody id="drawTable" ></tbody>
            </table>
        </div>
        <div ></div>
    </div>
</div>

<!--modal add chapter-->
<!--<div-->
<!--        class="modal fade"-->
<!--        id={`modalAdd${manga.id}`}-->
<!--        tabIndex={-1}-->
<!--        aria-labelledby="exampleModalLabel"-->
<!--        aria-hidden="true"-->

<!--&gt;-->
<!--    <div class="modal-dialog modal-dialog-centered">-->
<!--        <div class="modal-content">-->
<!--            <div class="modal-header">-->
<!--                <h5 class="modal-title" id="exampleModalLabel" ></h5>-->
<!--                <button-->
<!--                        type="button"-->
<!--                        class="btn-close"-->
<!--                        data-bs-dismiss="modal"-->
<!--                        aria-label="Close"-->
<!--                ></button>-->
<!--            </div>-->
<!--            <div class="modal-body">-->
<!--                <form>-->
<!--                    <div style="-->
<!--                          display: flex;-->
<!--                    justify-content: space-between;-->
<!--                    align-items: center"-->
<!--                    >-->
<!--                    <div style="color: #f1f1f1">Chon Anh:</div>-->
<!--            <div>-->
<!--                <img style=" width: 80px" src={url} />-->
<!--                <input multiple type="file">-->
<!--                <button onClick={uploadFile}> Upload Image</button>-->
<!--            </div>-->
<!--        </div>-->
<!--        </form>-->
<!--    </div>-->
<!--    <div class="modal-footer">-->
<!--        <button-->
<!--                type="button"-->
<!--                class="btn btn-secondary"-->
<!--                data-bs-dismiss="modal"-->
<!--        >-->
<!--            Close-->
<!--        </button>-->
<!--        <button-->
<!--                type="button"-->
<!--                class="btn btn-primary"-->
<!--                style="padding: 7px"-->
<!--        data-bs-dismiss="modal"-->
<!--        onClick={handleUpdate}-->
<!--        >-->
<!--        Add Image-->
<!--        </button>-->
<!--    </div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--MODAL EDIT-->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label  class="col-form-label">Name:</label>
                        <input type="text" class="form-control" id="update_manga_name">
                    </div>
                    <div class="mb-3">
                        <label  class="col-form-label">chapter:</label>
                        <input type="number" class="form-control" id="update_chapter_number">
                    </div>
                    <div class="mb-3">
                        <label  class="col-form-label">Status:</label>
                        <input type="text" class="form-control" id="update_status_manga">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="updateManga()" data-bs-dismiss="modal">Update Manga</button>
            </div>
        </div>
    </div>
</div>

<!--MODAL DELETE-->
<div class="modal fade" id="exampleModalDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelDelete">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">No</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="deleteManga()">Yes</button>
            </div>
        </div>
    </div>
</div>
<!--END MODAL DELETE-->
<!--//loginform-->
<div id="id01" class="modal">

    <form class="modal-content animate" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="../img/hhinh-anh-luffy-chibi-thu-the-rat-ngau_055520104.jpg" alt="Avatar" class="avatar">
        </div>
        <div class="container">
            <label class="alert alert-primary" style="color: red" id="checklogin"></label>
            <label for=><b id="validate_username1">Tài khoản</b></label>
            <input type="text" placeholder="Nhập tài khoản" name="uname" id="username1" oninput="validate1()" required>

            <label for=     ><b id="validate-password1">Mật khẩu</b></label>
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
            <label for=><b id="validate_username">Tài khoản</b></label>
            <input type="text" placeholder="Nhập tài khoản" name="uname" id="username" oninput="validate()" required>

            <label for=><b id="validate_password">Mật khẩu</b></label>
            <input type="password" placeholder="Nhập mật khẩu" name="psw" id="password" oninput="validate()" required>

            <label for=><b id="validate_re">Nhập lại mật khẩu</b></label>
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
<jsp:include page="Footer.jsp"></jsp:include>
</body>
<script src="../upload/upload.js"></script>

</html>