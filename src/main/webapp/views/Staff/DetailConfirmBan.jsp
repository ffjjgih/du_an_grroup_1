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
    <link rel="stylesheet" href="./views/Staff/css/detailconfirmban.css">
    <link rel="stylesheet" href="./views/Staff/css/grid.css">
    <link rel="stylesheet" href="./views/Staff/fontawesome-free-5.15.3-web/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div id="app">
        <div class="container-fluid">

            <div class="container_left l-3">
                <ul class="nav flex-column">
                    <li class="nav_logo">
                        <h3>NGUYỄN LÊ HẢI</h3>
                    </li>
                    <li class="nav-item">
                        <input type="text" readonly class="form-control" id="exampleFormControlInput1"
                            value="Nguyễn Văn A">
                    </li>
                    <li class="nav-item">
                        <input type="text" readonly class="form-control" id="exampleFormControlInput1"
                            value="hainlph17388@fpt.edu.vn">
                    </li>
                    <li class="nav-item">
                        <input type="text" readonly class="form-control" id="exampleFormControlInput1"
                            value="0977256375">
                    </li>

                </ul>
                <div class="left_footer">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="55" height="55" fill="currentColor"
                            class="bi bi-arrow-bar-up" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M8 10a.5.5 0 0 0 .5-.5V3.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 3.707V9.5a.5.5 0 0 0 .5.5zm-7 2.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5z" />
                        </svg>
                    </a>
                </div>
            </div>

            <div class="container_right l-12">
                <div class="right_header">
                    <div class="header_search">
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
                                    Chọn bàn
                                </button>
                            </li>
                            <li class="nav-item1" role="presentation">
                                <button class="nav-link" id="pills-home-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-not" type="button" role="tab" aria-controls="pills-not"
                                    aria-selected="true">
                                    Giỏ hàng
                                </button>
                            </li>
                        </ul>

                        <div class="tab-content" id="pills-tabContent">
                            <!--CHỌN BÀN start-->
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                aria-labelledby="pills-home-tab">
                                <div class="content_submit">
                                    <button type="button" class="btn btn-info" style="width: 200px;">Đặt bàn</button>
                                </div>
                                <form action="" method="post">
                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="content_button l-5">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="ban01"
                                                id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <a href="">
                                                    <button type="button" class="btn btn-warning buttonTable">
                                                        Bàn 01 <br>
                                                        Số người: 02
                                                    </button>
                                                </a>
                                            </label>
                                        </div>
                                    </div>


                                </form>

                            </div>
                            <!--CHỌN BÀN end-->

                            <!--GIỎ HÀNG start-->
                            <div class="tab-pane fade" id="pills-not" role="tabpanel"
                                aria-labelledby="pills-profile-tab">
                                <table class="table" style="text-align: center;">
                                    <thead>
                                        <tr>
                                            <th scope="col">MÃ MÓN</th>
                                            <th scope="col">TÊN MÓN</th>
                                            <th scope="col">ẢNH</th>
                                            <th scope="col">SỐ LƯỢNG</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">MON01</th>
                                            <td>GÀ XÀO XẢ ỚT</td>
                                            <td>ẢNH NÈ</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">MON01</th>
                                            <td>GÀ XÀO XẢ ỚT</td>
                                            <td>ẢNH NÈ</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">MON01</th>
                                            <td>GÀ XÀO XẢ ỚT</td>
                                            <td>ẢNH NÈ</td>
                                            <td>2</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--GIỎ HÀNG end-->
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src="./views/Staff/js/sidebar.js"></script>
    <script src="./views/Staff/js/thongtincanhanstaff.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>