<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!--modal guest start-->
<div class="modal_guest js_modal_guest">
<form action="/QL_Dat_Ban_NH/Bookinggest" method="post">
	<div class="modal_guest_container js_modal_guest_container">
		<div class="modal_guest_container--header">
			<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
				fill="currentColor" class="bi bi-x-circle-fill exitGuest"
				viewBox="0 0 16 16">
                        <path
					d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z" />
                    </svg>
		</div>
		<div class="modal_guest_container--body">
		<c:if test="${user.hoTen==null }">
			<div class="mb-3">
				<label for="exampleInputFullName1" class="form-label">Họ và
					tên</label> <input required onkeyup="checkFormName()" type="text"
					class="form-control" id="exampleInputFullName1" name="ho_ten"
					placeholder="VD: Nguyễn Lê Hải"> <label for=""
					class="error" id="nameHelp"></label>
			</div>
		</c:if>
		<c:if test="${user.hoTen!=null }">
			<div class="mb-3">
				<label for="exampleInputFullName1" class="form-label">Họ và
					tên</label> <input required onkeyup="checkFormName()" type="text"
					class="form-control" id="exampleInputFullName1" name="ho_ten"
					value="${user.hoTen}"> <label for=""
					class="error" id="nameHelp"></label>
			</div>
		</c:if>
			<div class="mb-3">
				<label for="exampleFormControlDate" class="form-label">Hẹn
					ngày</label> <input required type="date" class="form-control" name="dateDatBan"
					id="exampleFormControlDate">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTime" class="form-label">Hẹn
					giờ</label> <input required type="time" class="form-control" name="timedatban"
					id="exampleFormControlTime">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlQuan" class="form-label">Số
					lượng người ăn</label> <input required type="number"
					onkeyup="checkNumber()" class="form-control"
					id="exampleFormControlQuan"> <label for="" id="QuanHelp" name="so_luong"
					class="error"></label>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">Ghi
					chú</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" name="note"
					rows="3"></textarea>
			</div>
		</div>
		<div class="modal_guest_container--footer">
			<button type="submit" formaction="/QL_Dat_Ban_NH/Bookinggests?idgest=${user.idkh }" style="width: 100%; margin-top: 10px;"
				id="button1" class="btn btn-success">ĐẶT BÀN NGAY</button>
		</div>
	</div>
	</form>
</div>