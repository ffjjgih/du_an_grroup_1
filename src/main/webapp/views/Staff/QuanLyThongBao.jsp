<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./views/Staff/css/base.css">
    <link rel="stylesheet" href="./views/Staff/css/quanlythongbao.css">
    <link rel="stylesheet" href="./views/Staff/css/grid.css">
    <link rel="stylesheet" href="./views/Staff/fontawesome-free-5.15.3-web/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div id="app">
        <div class="container-fluid">

            <!-- side bar -->
			<jsp:include page="Sidebar.jsp"></jsp:include>

            <div class="container_right l-12">
                <div class="right_header">
                    <div class="header_search">
                        <form action="" method="post">
                            <input type="search" name="" id="" placeholder="Nhập mã bàn...">
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

                <div class="container_right_body l-12">
                    <div class="body_left l-3"></div>
                    <div class="body_right l-9">
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item1" role="presentation">
                                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                                    aria-selected="true">
                                    Xác nhận
                                </button>
                            </li>
                            <li class="nav-item1" role="presentation">
                                <button class="nav-link" id="pills-home-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-not" type="button" role="tab" aria-controls="pills-not"
                                    aria-selected="true">
                                    Bàn đã xác nhận
                                </button>
                            </li>
                            <li class="nav-item1" role="presentation">
                                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-profile" type="button" role="tab"
                                    aria-controls="pills-profile" aria-selected="false">
                                    Bàn hủy
                                </button>
                            </li>
                        </ul>

                        <div class="tab-content" id="pills-tabContent">
                            <!--confirm bàn start-->
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                aria-labelledby="pills-home-tab">
                                <div class="body_right--header" style="float: right;">
                                    <button type="button" class="btn btn-success js-modal-btn">Thêm bàn</button>
                                </div>
                                <div class="body_right--table">
                                    <table class="table" style="text-align: center;">
                                        <thead>
                                            <tr>
                                                <th scope="col">MÃ KHÁCH HÀNG</th>
                                                <th scope="col">NGÀY ĐẶT</th>
                                                <th scope="col">GIỜ ĐẶT</th>
                                                <th scope="col">XEM CHI TIẾT</th>
                                                <th scope="col">TÁC VỤ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td><a href="">chi tiết</a></td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td><a href="">chi tiết</a></td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td><a href="">chi tiết</a></td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td><a href="">chi tiết</a></td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td><a href="">chi tiết</a></td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--confirm bàn end-->

                            <!--bàn đã confirm start-->
                            <div class="tab-pane fade" id="pills-not" role="tabpanel"
                                aria-labelledby="pills-profile-tab">
                                <div class="body_right--table">
                                    <table class="table" style="text-align: center;">
                                        <thead>
                                            <tr>
                                                <th scope="col">MÃ KHÁCH HÀNG</th>
                                                <th scope="col">NGÀY ĐẶT</th>
                                                <th scope="col">GIỜ ĐẶT</th>
                                                <th scope="col">MÃ BÀN</th>
                                                <th scope="col">TÁC VỤ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>
                                                    <button type="button" class="btn btn-info">Sửa</button>
                                                    <button type="button" class="btn btn-danger">Xóa</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--bàn đã confirm end-->

                            <!--bàn hủy start-->
                            <div class="tab-pane fade" id="pills-profile" role="tabpanel"
                                aria-labelledby="pills-profile-tab">
                                <div class="body_right--table">
                                    <table class="table" style="text-align: center;">
                                        <thead>
                                            <tr>
                                                <th scope="col">MÃ KHÁCH HÀNG</th>
                                                <th scope="col">NGÀY ĐẶT</th>
                                                <th scope="col">GIỜ ĐẶT</th>
                                                <th scope="col">MÃ BÀN</th>
                                                <th scope="col">TRẠNG THÁI</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>ĐÃ HỦY</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>ĐÃ HỦY</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>ĐÃ HỦY</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>ĐÃ HỦY</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>20/11/2021</td>
                                                <td>14:00 PM</td>
                                                <td>BD01</td>
                                                <td>ĐÃ HỦY</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--bàn hủy end-->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--THÊM BÀN MODAL-->
        <div class="modal_add js_modal_add">
            <div class="modal_add_container js_modal_add_container">
                <h3>THÊM BÀN MỚI</h3>
                <form>
                    <div class="mb-3">
                        <label for="exampleInputFullName1" class="form-label">TÊN KHÁCH HÀNG</label>
                        <input required type="text" class="form-control" onchange=""
                            id="exampleInputFullName1" onkeyup="checkFormName()">
                        <label for="" class="error" id="nameHelp"></label>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPhoneNume1" class="form-label">SỐ ĐIỆN THOẠI</label>
                        <input required type="text" class="form-control" id="exampleInputPhoneNume1"
                            aria-describedby="emailHelp" onkeyup="checkFormPhone()">
                        <label for="" class="error" id="phoneHelp"></label>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputQuantity" class="form-label">SỐ LƯỢNG NGƯỜI</label>
                        <input required type="number" class="form-control" id="exampleInputQuantity"
                            aria-describedby="emailHelp" onkeyup="checkNumber()">
                        <label for="" class="error" id="quantityHelp"></label>
                    </div>
                    <div class="mb-3">
                        <div class="form-floating">
                            <textarea class="form-control" maxlength="100"
                                placeholder="Tối đa nhập 100 ký tự..." id="floatingTextarea2"
                                style="height: 100px; resize: none;"></textarea>
                            <label for="floatingTextarea2">CHI TIẾT</label>
                        </div>
                        <label for="" class="error txtAreaHelp"></label>
                    </div>
                    <button type="submit" id="submit" class="btn btn-primary">Submit</button>
                    <button type="button" class="btn btn-danger js_btn-close">Exit</button>
                </form>
            </div>
        </div>
    </div>


    <script src="./views/Staff/js/sidebar.js"></script>
    <script src="./views/Staff/js/thongtincanhanstaff.js"></script>
    <script src="./views/Staff/js/modaladdpost.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>