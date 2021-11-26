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
<link rel="stylesheet" href="./views/Staff/css/menuchitietban.css">
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
					<div class="header_search">
						<h3 style="color: white;">Thông tin menu chi tiết bàn 01</h3>
					</div>
				</div>

				<div class="container_right_body l-12">
					<div class="body_left l-3"></div>
					<div class="body_right l-9">
						<div class="body_right_content">
							<table class="table" style="text-align: center;">
								<thead>
									<tr>
										<th scope="col">STT</th>
										<th scope="col">MÃ MÓN</th>
										<th scope="col">TÊN MÓN</th>
										<th scope="col">SỐ LƯỢNG</th>
										<th scope="col">ĐƠN GIÁ</th>
										<th scope="col">SỐ LƯỢNG ĐÃ LÊN</th>
										<th scope="col">HỦY MÓN</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>1</td>
										<td>Lẩu thái</td>
										<td>2</td>
										<td>300.000</td>
										<td>1</td>
										<td>
											<button type="button" class="btn btn-warning"
												onclick="alertThemMon()">
												<svg xmlns="http://www.w3.org/2000/svg"
													style="color: white;" width="16" height="16"
													fill="currentColor" class="bi bi-pencil-fill"
													viewBox="0 0 16 16">
                                                    <path
														d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z" />
                                                  </svg>
											</button>
											<button type="button" class="btn btn-danger"
												onclick="alertXoaMon()">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-trash-fill"
													viewBox="0 0 16 16">
                                                    <path
														d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z" />
                                                </svg>
											</button>
										</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>1</td>
										<td>Lẩu thái</td>
										<td>2</td>
										<td>300.000</td>
										<td>1</td>
										<td>
											<button type="button" class="btn btn-warning"
												onclick="alertThemMon()">
												<svg xmlns="http://www.w3.org/2000/svg"
													style="color: white;" width="16" height="16"
													fill="currentColor" class="bi bi-pencil-fill"
													viewBox="0 0 16 16">
                                                    <path
														d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z" />
                                                  </svg>
											</button>
											<button type="button" class="btn btn-danger"
												onclick="alertXoaMon()">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-trash-fill"
													viewBox="0 0 16 16">
                                                    <path
														d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z" />
                                                </svg>
											</button>
										</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>1</td>
										<td>Lẩu thái</td>
										<td>2</td>
										<td>300.000</td>
										<td>1</td>
										<td>
											<button type="button" class="btn btn-warning"
												onclick="alertThemMon()">
												<svg xmlns="http://www.w3.org/2000/svg"
													style="color: white;" width="16" height="16"
													fill="currentColor" class="bi bi-pencil-fill"
													viewBox="0 0 16 16">
                                                    <path
														d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z" />
                                                  </svg>
											</button>
											<button type="button" class="btn btn-danger"
												onclick="alertXoaMon()">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-trash-fill"
													viewBox="0 0 16 16">
                                                    <path
														d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z" />
                                                </svg>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="body_right_footer">
							<button type="button" class="btn btn-success">Chọn thêm
								món</button>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script>
		function alertThemMon() {
			let sl = prompt("Nhập số lượng món muốn thêm:", "1");

			if (sl == null || sl == "") {
				console.log("Nothing");
			} else if (sl < 0) {
				alert("Số lượng không được để âm");
			} else if (isNaN(sl)) {
				alert("Không đúng định dạng");
			} else {
				alert("Bạn nhập số " + sl);
			}
		}

		function alertXoaMon() {
			let sl = prompt("Nhập số lượng món muốn xóa:", "1");

			if (sl == null || sl == "") {
				console.log("Nothing");
			} else if (sl < 0) {
				alert("Số lượng không được để âm");
			} else if (isNaN(sl)) {
				alert("Không đúng định dạng");
			} else {
				alert("Bạn nhập số " + sl);
			}
		}
	</script>
	<script src="./views/Staff/js/sidebar.js"></script>
</body>

</html>