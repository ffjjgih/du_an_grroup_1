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
    <link rel="stylesheet" href="./views/Staff/css/banxacnhanchitiet.css">
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
                        <h4 style="color: white; margin: 10px 20px;">Chi tiết bàn: 02</h4>
                    </div>
                </div>

                <div class="container_right_body l-12">
                    <div class="body_left l-3"></div>
                    <div class="body_right l-9">
                        <form action="" method="post">
                            <div class="mb-3">
                                <label for="exampleFormControlID" class="form-label">Mã bàn</label>
                                <input readonly type="text" class="form-control" id="exampleFormControlID" value="02">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlIDK" class="form-label">Mã khách</label>
                                <input readonly type="text" class="form-control" id="exampleFormControlIDK" value="KH01">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlDate" class="form-label">Thời gian đặt</label>
                                <input required type="date" class="form-control" id="exampleFormControlDate" value="2014-02-09">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTime" class="form-label">Giờ đặt</label>
                                <input readonly type="time" class="form-control" id="exampleFormControlTime">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlQuan" class="form-label">Số lượng người</label>
                                <input readonly type="number" class="form-control" id="exampleFormControlQuan" value="10">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">Ghi chú</label>
                                <textarea readonly class="form-control" id="exampleFormControlTextarea1" rows="5"
                                    style="resize: none;">Nhà có 3 trẻ em</textarea>
                            </div>

                            <div class="button_control">
                                <button type="button" class="btn btn-success btn_submit">Xác nhận</button>
                                <button type="button" class="btn btn-danger btn_exit">Hủy</button>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src="./views/Staff/js/sidebar.js"></script>
</body>

</html>