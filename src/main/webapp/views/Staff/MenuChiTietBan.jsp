<%@page import="model.Mnct"%>
<%@page import="model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.Hdct"%>
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
						<h3 style="color: white;">Thông tin menu chi tiết bàn
							${bd.ttBan.IDBan}</h3>
					</div>
				</div>

				<div class="container_right_body l-12">
					<div class="body_left l-3"></div>

					<div class="body_right l-9">
						<form action="/QL_Dat_Ban_NH/menuCTController" method="post">
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
										<c:forEach items="${listMNCT }" var="mn">
											<c:forEach items="${listHDCT }" var="hd">

												 
												<c:if test="${mn.getIdMnct()==hd.getMnct().getIdMnct() }">
														<tr>
															<th scope="row">1</th>
															<td>${ hd.getMnct().getMenu().getIdmn() }</td>
															<td>${ hd.getMnct().getMenu().getTen_Mon_An()}</td>
															<td>${ hd.getMnct().getSo_luong()}</td>
															<td>${ hd.getMnct().getMenu().getGia()}</td>
															<td>${ hd.getSo_luong()}</td>
															<td>
																<button type="submit" class="btn btn-danger">
																	<svg xmlns="http://www.w3.org/2000/svg" width="16"
																		height="16" fill="currentColor"
																		class="bi bi-trash-fill" viewBox="0 0 16 16">
                                                    <path
																			d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z" />
                                                </svg>
																</button>
															</td>
														</tr>
												</c:if>
											</c:forEach>
										</c:forEach>

									</tbody>
								</table>
							</div>



							<div class="body_right_footer">
								<button type="submit" class="btn btn-success"
									formaction="/QL_Dat_Ban_NH/menuCTController/create?id=${bd.idBdct}&&idhd=${idhd}">Chọn
									thêm món</button>
								<button type="submit" class="btn btn-warning">Thanh
									toán</button>
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