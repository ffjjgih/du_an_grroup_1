<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./views/assets/css/saudatban.css">
    <link rel="stylesheet" href="./views/assets/css/datbankhach.css">
    <link rel="stylesheet" href="./views/assets/css/login.css">
    <link rel="stylesheet" href="./views/assets/css/grid.css">
    <link rel="stylesheet" href="./views/assets/css/base.css">
    <link rel="stylesheet" href="./views/assets/css/forgotpassword.css">
    <link rel="stylesheet" href="./views/assets/responsive/datbankhachR.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="./views/assets/fontawesome-free-5.15.3-web/css/all.min.css">

</head>

<body>
	
    <div id="app">
        <jsp:include page="HeaderKhachHang.jsp"></jsp:include>
        <form action="/QL_Dat_Ban_NH/Booking" method="post">
        <c:choose>
        	<c:when test="${inforbooking!=null }">
        		<div class="container_content">
            <div class="content_left l-8">
                <div class="content_left_forminput">
                    <div class="forminput_title">GIỎ HÀNG</div>
                    <div class="forminput_content">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">HÌNH ẢNH</th>
                                        <th scope="col">TÊN MÓN</th>
                                        <th scope="col">SỐ LƯỢNG</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${carts }" var="monan">
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>${monan.menu.img }</td>
                                        <td>${monan.menu.ten_Mon_An }</td>
                                        <td>${monan.so_luong }</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        <a type="button" href="/QL_Dat_Ban_NH/Order?index=${inforbooking.idBd}" style="width: 300px; float: left; margin-top: 20px;"
                            class="btn btn-success">THÊM MÓN ĂN</a>
                        <button type="button" style="width: 300px; float: right; margin-top: 20px;"
                            class="btn btn-danger">HỦY ĐẶT BÀN</button> 
                    </div>
                </div>
            </div>

            <div class="content_right l-4">
                <div class="content_right_forminfo">
                    <div class="forminput_title">THÔNG TIN BÀN ĐẶT</div>
                    <div class="forminfo_content">
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress">Họ và tên</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"
                                id="inputAddress" placeholder="${inforbooking.khachHang.hoTen }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress2">Số điện thoại</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"
                                id="inputAddress2" placeholder="${inforbooking.khachHang.sdt }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress2">Số lượng người</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"
                                id="inputAddress2" placeholder="${inforbooking.so_Luong_Nguoi }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress2">Ngày đặt</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"
                                id="inputAddress2" placeholder="${inforbooking.ngayDatBan }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress2">Giờ đặt</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"
                                id="inputAddress2" placeholder="${inforbooking.gioDatBan }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress2">Trạng thái</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"
                                id="inputAddress2" placeholder="${inforbooking.trang_Thai }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress2">Ghi chú</label>
                            <textarea readonly style="margin-top: 10px; resize: none;" class="form-control"
                                id="exampleFormControlTextarea1" rows="3">${inforbooking.ghi_Chu }</textarea>
                        </div>
                    </div>
                    <a type="button" href="/QL_Dat_Ban_NH/Changebooking?index=${inforbooking.idBd}" style="margin-top: 20px; margin-left: 30%;" class="btn btn-success js_showmodal_info">
                        CẬP NHẬT THÔNG TIN
                    </a>
                </div>
            </div>

        </div>
        	</c:when>
        	<c:otherwise>
        		<div class="container_content">
            <div class="content_left l-8">
                <div class="content_left_forminput">
                    <div class="forminput_title">ĐẶT BÀN</div>
                    <div class="forminput_content">
                        

                            <div class="form-group row">
                                <label for="" class="col-sm-5 col-form-label">Số người</label>
                                <div class="col-sm-7">
                                    <input type="number" required class="form-group_input" name="so_Luong_Nguoi" id="" placeholder="Nhập số người">
                                    <span class="form-group_error"></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="" class="col-sm-5 col-form-label">Ngày</label>
                                <div class="col-sm-7">
                                    <input type="date" required class="form-group_input" name="dateDatBan" id="dateDatBan">
                                    <span class="form-group_error"></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="" class="col-sm-5 col-form-label">Giờ</label>
                                <div class="col-sm-7">
                                    <input type="time" required class="form-group_input" name="timedatban" id="gioDatBan">
                                    <span class="form-group_error"></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="" class="col-sm-5 col-form-label">Ghi chú</label>
                                <div class="col-sm-7">
                                    <textarea class="form-control form-group_input" style="resize: none; height: 90px; padding-top: 10px;" id="exampleFormControlTextarea1" name="ghi_Chu" rows="3"></textarea>
                                    <span class="form-group_error"></span>
                                </div>
                            </div>

                            <div class="forminput_content_button">
                                <button type="reset" class="btn btn-danger">NHẬP LẠI THÔNG TIN</button>
                                <button  formaction="/QL_Dat_Ban_NH/Booking/Datban" class="btn btn-primary">ĐẶT BÀN NGAY</button>
                                <button type="submit" formaction="/QL_Dat_Ban_NH/Booking/order" class="btn btn-success">CHỌN MÓN ĂN</button>
                            </div>
                        
                    </div>
                </div>
            </div>

            <div class="content_right l-4">
                <div class="content_right_forminfo">
                    <div class="forminput_title">THÔNG TIN CÁ NHÂN</div>
                    <div class="forminfo_content">
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress">Họ và tên</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control" id="inputAddress" placeholder="${user.hoTen }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;">
                            <label for="inputAddress2">Số điện thoại</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"  id="inputAddress2" placeholder="${user.sdt }">
                        </div>
                        <div class="form-group" style="margin-bottom: 20px;"> 
                            <label for="inputAddress2">Email</label>
                            <input type="text" style="height: 50px; margin-top: 10px;" readonly class="form-control"  id="inputAddress2" placeholder="${user.gmail }">
                        </div>
                    </div>
                    <a type="button" href="/QL_Dat_Ban_NH/Profile" style="margin-top: 20px; margin-left: 30%;" class="btn btn-info">CẬP NHẬT THÔNG TIN</a>
                </div>
            </div>

        </div>
        
        	</c:otherwise>
        </c:choose>
        </form>

        <!--modal login, regis start-->
        <jsp:include page="Login.jsp"></jsp:include>

        <!--modal forgot pass start-->
    	<jsp:include page="ForgotPassword.jsp"></jsp:include>
    </div>
	
    <jsp:include page="FooterKhachHang.jsp"></jsp:include>

	<script src="./views/assets/js/register.js"></script>
    <script>
        var myCarousel = document.querySelector('#myCarousel')
        var carousel = new bootstrap.Carousel(myCarousel, {
            interval: 1000,
            wrap: false
        })
    </script>
    <script src="./views/assets/js/login.js"></script>
    <script src="./views/assets/js/navbar.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="./views/assets/js/onclickLogin.js"></script>
</body>

</html>