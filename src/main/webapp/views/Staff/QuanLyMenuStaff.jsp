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
<link rel="stylesheet" href="./views/Staff/css/base.css">
<link rel="stylesheet" href="./views/Staff/css/quanlymenustaff.css">
<link rel="stylesheet" href="./views/Staff/css/grid.css">
<link rel="stylesheet"
	href="./views/Staff/fontawesome-free-5.15.3-web/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>

<body>
	<div id="app">
		<div class="container-fluid">

			<!-- side bar -->
			<jsp:include page="Sidebar.jsp"></jsp:include>

            <div class="container_right l-12">
                <div class="right_header">
                	<div class="container_right_footer">
                        <button type="button" class="btn btn-success">Xác nhận khách đến</button>
                        <button type="button" class="btn btn-warning">Thanh toán</button>
                    </div>
                    <div class="header_search">
                        <form action="" method="post">
                            <input type="search" name="" id="" placeholder="Nhập mã bàn...">
                            <button type="button" class="btn btn-dark">
                                <svg xmlns="http://www.w3.org/2000/svg" style="color: white;" width="16" height="16"
                                    fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">Box="0 0 16 16">
                                    <path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                </svg>
								TÌM KIẾM
							</button>
					</div>
					</div>
					</form>
				</div>
				<form action="/QuanLiMenuController" method="post">
					<div class="container_right_body l-12">
						<div class="body_left l-3"></div>
						<div class="body_right l-9">
							<h3>Số lượng bàn đang sử dụng: ${bv } bàn</h3>
							<c:forEach var="items" items="${ListBDCT }">
								<div class="content_button l-5">
									<a href="">
										<button type="submit" class="btn btn-primary buttonTable"
											formaction="QuanLiMenuController/bdct?id=${items.ttBan.IDBan }&&idbdct=${items.idBdct} ">
											Bàn ${items.ttBan.IDBan} <br> Số người:
											${items.thongTinBanDat.so_Luong_Nguoi}
										</button>
									</a>
								</div>
							</c:forEach>

						</div>
					</div>
				</form>
			</div>
		</div>


	<script src="./views/Staff/js/sidebar.js"></script>

</body>

</html>