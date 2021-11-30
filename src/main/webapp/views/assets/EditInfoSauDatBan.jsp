<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./views/assets/css/saudatban.css">
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

        <div class="container_content">
            <div class="modal_editInfo">
                <div class="modal_editInfo_container">
                    <form action="/QL_Dat_Ban_NH/Changebooking" method="post">
                        <h3>CHỈNH SỬA THÔNG TIN ĐẶT BÀN</h3>
                        <div class="container_body">
                            <div class="row">
                                <div class="col">
                                    <div class="controlBTN" style="width: 480px; margin-bottom: 50px; margin-left: -10px;">
                                        <button type="button" style="width: 150px; float: left; margin: 2px; border-radius: 50px;" class="btn btn-danger">29-11-2021</button>
                                        <button type="button" style="width: 150px; float: left; margin: 2px; border-radius: 50px;" class="btn btn-info">30-11-2021</button>
                                        <button type="button" style="width: 150px; float: left; margin: 2px; border-radius: 50px;" class="btn btn-info">1-12-2021</button>
                                    </div>
                                </div>
                                <div class="col">
                                    <select name="" id="" class="form-select form-control" style="width: 240px; margin-bottom: 15px; height: 38px; float: left;">
                                        <option selected>Open this select menu</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>  
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <input required type="text" class="form-control" placeholder="Họ và tên"
                                        value="Nguyễn Lê Hải">
                                </div>
                                <div class="col">
                                    <input required type="text" class="form-control" placeholder="Số điện thoại"
                                        value="0977256375">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <input required type="text" class="form-control" placeholder="Trạng thái"
                                        value="Đang xác nhận">
                                </div>
                                <div class="col">
                                    <input required type="number" class="form-control" placeholder="Số lượng người"
                                        value="2">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <textarea class="form-control" style="resize: none;"
                                        id="exampleFormControlTextarea1" placeholder="Ghi chú"
                                        rows="3">Nhà có 2 trẻ con</textarea>
                                </div>
                            </div>
                        </div>

                        <button type="submit" formaction="/QL_Dat_Ban_NH/Changebooking?index=${show.idBd }" style="width: 500px;" class="btn btn-success">SUBMIT</button>


                    </form>
                </div>
            </div>
        </div>

        <!--modal login, regis start-->
		<jsp:include page="Login.jsp"></jsp:include>

        <!--modal forgot pass start-->
        <jsp:include page="ForgotPassword.jsp"></jsp:include>

    </div>

    <jsp:include page="FooterKhachHang.jsp"></jsp:include>

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