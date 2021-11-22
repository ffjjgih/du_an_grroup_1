<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./views/Manager/css/base.css">
    <link rel="stylesheet" href="./views/Manager/css/quanlynhanvien.css">
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
                    <h4 style=" margin-top: 10px;">QUẢN LÝ NHÂN VIÊN</h4>
                </div>

            </div>
            <div class="container_right_body">
                <div class="body_left l-3"></div>
                <div class="right_body l-9">
                    <div class="right_body--header">
                        <div class="header_button">
                            <button type="button" class="btn btn-success js-modal-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                                    class="bi bi-plus-lg" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
                                </svg>
                                THÊM MỚI
                            </button>
                        </div>
                        <div class="header_search">
                            <form action="" method="post">
                                <input type="search" name="" id="" placeholder="Nhập tên nhân viên">
                                <button type="button" class="btn btn-dark">
                                    <svg xmlns="http://www.w3.org/2000/svg" style="color: white;" width="16" height="16"
                                        fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                        <path
                                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                    </svg>
                                    TÌM KIẾM
                                </button>
                            </form>
                        </div>
                    </div>
                    <div class="right_body--content">
                        <table class="table" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th scope="col">MÃ NHÂN VIÊN</th>
                                    <th scope="col">HỌ VÀ TÊN</th>
                                    <th scope="col">SỐ ĐIỆN THOẠI</th>
                                    <th scope="col">GIỚI TÍNH</th>
                                    <th scope="col">ĐỊA CHỈ</th>
                                    <th scope="col">THAO TÁC</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>NGUYỄN LÊ HẢI</td>
                                    <td>0977256375</td>
                                    <td>NAM</td>
                                    <td>CẦU GIẼ, XÃ ĐẠI XUYÊN, HUYỆN PHÚ XUYÊN, HÀ NỘI</td>
                                    <td>
                                        <button type="button" class="btn btn-info"
                                            style="margin-bottom: 10px;">SỬA</button>
                                        <button type="button" class="btn btn-danger" style="margin-bottom: 10px;">XÓA</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>NGUYỄN LÊ HẢI</td>
                                    <td>0977256375</td>
                                    <td>NAM</td>
                                    <td>CẦU GIẼ, XÃ ĐẠI XUYÊN, HUYỆN PHÚ XUYÊN, HÀ NỘI</td>
                                    <td>
                                        <button type="button" class="btn btn-info"
                                            style="margin-bottom: 10px;">SỬA</button>
                                        <button type="button" class="btn btn-danger" style="margin-bottom: 10px;">XÓA</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>NGUYỄN LÊ HẢI</td>
                                    <td>0977256375</td>
                                    <td>NAM</td>
                                    <td>CẦU GIẼ, XÃ ĐẠI XUYÊN, HUYỆN PHÚ XUYÊN, HÀ NỘI</td>
                                    <td>
                                        <button type="button" class="btn btn-info"
                                            style="margin-bottom: 10px;">SỬA</button>
                                        <button type="button" class="btn btn-danger" style="margin-bottom: 10px;">XÓA</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>

        <div class="modal_add js_modal_add">
            <div class="modal_add_container js_modal_add_container">
                <h3>THÊM NHÂN VIÊN MỚI</h3>
                <form>
                    <div class="mb-3">
                        <label for="exampleInputName" class="form-label">HỌ VÀ TÊN</label>
                        <input onkeyup="checkFormName()" required type="text" class="form-control" id="exampleInputName">
                        <label for="" id="nameHelp" class="error"></label>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPhone" class="form-label">SỐ ĐIỆN THOẠI</label>
                        <input onkeyup="checkFormPhone()" required type="text" class="form-control" id="exampleInputPhone">
                        <label for="" id="emailHelp" class="error"></label>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPhone" class="form-label">GIỚI TÍNH</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">NAM</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">NỮ</label>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputAddress" class="form-label">ĐỊA CHỈ</label>
                        <input required type="text" class="form-control" id="exampleInputAddress">
                    </div>
                    <button type="reset" class="btn btn-secondary" style="margin: 10px;">RESET</button>
                    <button type="submit" class="btn btn-primary"  id="btn_save" style="margin: 10px;">SAVE</button>
                    <button type="button" class="btn btn-danger js_btn-close" style="margin: 10px;">Exit</button>
                </form>
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