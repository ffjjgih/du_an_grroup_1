<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="./views/Manager/css/thongkebandat.css">
<link rel="stylesheet" href="./views/Manager/css/grid.css">
<link rel="stylesheet"
	href="./views/assets/fontawesome-free-5.15.3-web/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>

<body>
	<div id="app">
		<div class="container-fluid">
			<div class="container_left l-3">
				<ul class="nav flex-column">
					<li class="nav_logo">
						<h3>NGUYỄN LÊ HẢI</h3>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
                                <path fill-rule="evenodd"
									d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
                            </svg> TRANG CHỦ
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-sliders" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z" />
                            </svg> QUẢN LÝ THỰC ĐƠN
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-sliders" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z" />
                            </svg> QUẢN LÝ ĐẶT BÀN
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-sliders" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z" />
                            </svg> QUẢN LÝ NHÂN VIÊN
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-sliders" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z" />
                            </svg> QUẢN LÝ KHÁCH HÀNG
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-bar-chart-fill"
								viewBox="0 0 16 16">
                                <path
									d="M1 11a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-3zm5-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1V2z" />
                            </svg> THỐNG KÊ
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-box-arrow-in-left"
								viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="M10 3.5a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 1 1 0v2A1.5 1.5 0 0 1 9.5 14h-8A1.5 1.5 0 0 1 0 12.5v-9A1.5 1.5 0 0 1 1.5 2h8A1.5 1.5 0 0 1 11 3.5v2a.5.5 0 0 1-1 0v-2z" />
                                <path fill-rule="evenodd"
									d="M4.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H14.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z" />
                            </svg> ĐĂNG XUẤT
					</a></li>
				</ul>
				<div class="left_footer">
					<a href="#"> <svg xmlns="http://www.w3.org/2000/svg" width="55"
							height="55" fill="currentColor" class="bi bi-arrow-bar-up"
							viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
								d="M8 10a.5.5 0 0 0 .5-.5V3.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 3.707V9.5a.5.5 0 0 0 .5.5zm-7 2.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5z" />
                        </svg>
					</a>
				</div>
			</div>

			<div class="container_right l-12">
				<div class="right_header" style="color: white; font-size: 18px;">
					<h4 style="margin-top: 10px;">THỐNG KÊ BÀN ĐẶT</h4>
				</div>
				<div class="right_body--header">
					<div class="header_search">
						<select class="form-select" aria-label="Default select example">
							<option selected>Thống kê theo năm</option>
							<option value="2021">2021</option>
							<option value="2020">2020</option>
							<option value="2019">2019</option>
						</select>
					</div>
				</div>
			</div>
			<div class="container_right_body">
				<div class="body_left l-3"></div>
				<div class="right_body l-9">

					<div class="right_body--content">

						<div class="content_table" style="margin-bottom: 100px;">
							<table id="t1" class="table table-danger"
								style="text-align: center;">
								<thead>
									<tr>
										<th scope="col">THÁNG</th>
										<th scope="col">SỐ LƯỢNG BÀN ĐẶT</th>
										<th scope="col">TỔNG BÀN</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="o" items="${listTkbd.entrySet()}">
										<tr>
											<th>${o.getKey()}</th>
											<td>${o.getValue()}</td>
											<td>${o.getValue()}</td>
										</tr>
									</c:forEach>
									<tr>
										<th colspan="2">TỔNG</th>
										<th style="color: tomato; font-size: 20px;" id="sum">${sum}</th>
									</tr>
								</tbody>
							</table>
						</div>

						<div id="chart_div"
							style="margin-left: -120px; margin-top: -70px;"></div>
					</div>

				</div>
			</div>

		</div>

	</div>

	<!--Load the AJAX API-->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		// Load the Visualization API and the corechart package.
		google.charts.load('current', {
			'packages' : [ 'corechart' ]
		});

		// Set a callback to run when the Google Visualization API is loaded.
		google.charts.setOnLoadCallback(drawChart);

		// Callback that creates and populates a data table,
		// instantiates the pie chart, passes in the data and
		// draws it.
		function drawChart() {

			// Create the data table.
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Tháng');
			data.addColumn('number', 'Số lượng bàn');
			data.addRows([
				x
			]);

			// Set chart options
			var options = {
				'width' : 1110,
				'height' : 700
			};

			// Instantiate and draw our chart, passing in some options.
			var chart = new google.visualization.ColumnChart(document
					.getElementById('chart_div'));
			chart.draw(data, options);
		}
	</script>
	<script src="./views/Manager/js/sidebar.js"></script>
</body>

</html>