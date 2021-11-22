<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./views/Manager/css/base.css">
    <link rel="stylesheet" href="./views/Manager/css/editinfostaff.css">
    <link rel="stylesheet" href="./views/Manager/css/grid.css">
    <link rel="stylesheet" href="./views/assets/fontawesome-free-5.15.3-web/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div id="app">
        <div class="container-fluid">

            <jsp:include page="SideBarManager.jsp"></jsp:include>

            <div class="container_right l-12">
                <div class="right_header" style="color: white; font-size: 18px;">
                    <h4 style=" margin-top: 10px;">CHỈNH SỬA THÔNG TIN</h4>
                </div>
            </div>
            <div class="container_right_body">
                <div class="body_left l-3"></div>
                <div class="right_body l-9">
                    <div class="right_body--header"></div>
                    <div class="right_body--content">
                        <form>
                            <div class="mb-3">
                                <label for="exampleInputName" class="form-label">HỌ VÀ TÊN</label>
                                <input onkeyup="checkFormName()" required type="text" class="form-control"
                                    id="exampleInputName">
                                <label for="" id="nameHelp" class="error"></label>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPhone" class="form-label">SỐ ĐIỆN THOẠI</label>
                                <input onkeyup="checkFormPhone()" required type="text" class="form-control"
                                    id="exampleInputPhone">
                                <label for="" id="emailHelp" class="error"></label>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPhone" class="form-label">GIỚI TÍNH</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                        id="flexRadioDefault1">
                                    <label class="form-check-label" for="flexRadioDefault1">NAM</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                        id="flexRadioDefault2" checked>
                                    <label class="form-check-label" for="flexRadioDefault2">NỮ</label>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputAddress" class="form-label">ĐỊA CHỈ</label>
                                <input required type="text" class="form-control" id="exampleInputAddress">
                            </div>
                            <button type="reset" class="btn btn-secondary" style="margin: 10px;">RESET</button>
                            <button type="submit" class="btn btn-primary" id="btn_save" style="margin: 10px;">SAVE</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <div class="container_footer" style="text-align: center;">
        <hr>
        <p>Copyright © 2021 Team One. Powered by HaiNguyen</p>
    </div>
    <script src="./views/Manager/js/modaladdnhanvien.js"></script>
    <script src="./views/Manager/js/sidebar.js"></script>
</body>

</html>