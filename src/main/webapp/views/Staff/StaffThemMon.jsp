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
<link rel="stylesheet" href="./views/Staff/css/staffthemmon.css">
<link rel="stylesheet" href="./views/Staff/css/base.css">
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
					<div class="header_search"></div>
				</div>

				<div class="container_right_body l-12">
					<div class="body_left l-3"></div>
					<div class="body_right l-9">
						<div class="body_right-header">
							<div class="body_right-header-search">
								<form action="" method="post">
									<input type="search" name="" id=""
										placeholder="Nhập món ăn muốn tìm kiếm...">
									<button type="button" class="btn btn-dark">
										<svg xmlns="http://www.w3.org/2000/svg" style="color: white;"
											width="16" height="16" fill="currentColor"
											class="bi bi-search" viewBox="0 0 16 16">
                                            <path
												d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                        </svg>
										TÌM KIẾM
									</button>
								</form>
							</div>
                           
							<div class="body_right-header-info">
								<h4>Bàn 01</h4>
							</div>
						</div>

						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-home"
								role="tabpanel" aria-labelledby="pills-home-tab">

								<div class="body_items">
									<c:forEach items="${monan }" var="items">
										<div class="body_right-content--item l-3">
											<div class="item_img">
												<img src="./views/Staff/img/${items.img}" alt="" name="img">
											</div>
											<div class="item_title">
												<p >${items.ten_Mon_An }</p>
											</div>
											<div class="item_quantity">
												<input type="number" name="sl" value="0" id="">
											</div>
											<div class="item_booking">
												<a type="button" class="btn btn-primary" href="/ThemThucDonStaff">Thêm món</a>
											</div>
										</div>
									</c:forEach>
								</div>
								<div class="tab-pane fade" id="pills-profile" role="tabpanel"
									aria-labelledby="pills-profile-tab"></div>
							</div>
						</div>

					</div>
				</div>

			</div>

			<script src="./views/Staff/js/sidebar.js"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>
</body>

</html>