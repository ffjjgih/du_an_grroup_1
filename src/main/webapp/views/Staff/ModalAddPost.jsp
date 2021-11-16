<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal_add js_modal_add">
	<div class="modal_add_container js_modal_add_container">
		<h3>THÊM BÀI VIẾT MỚI</h3>
		<form>
			<div class="mb-3">
				<label for="exampleInputImg" class="form-label">Chọn ảnh bài
					viết</label> <input readonly type="file" class="form-control"
					onchange="return fileValid()" id="exampleInputImg"> <label
					for="" class="error"></label>
			</div>
			<div class="mb-3">
				<label for="exampleInputTitle" class="form-label">Tiêu đề
					bài viết</label> <input readonly type="text" class="form-control"
					id="exampleInputTitle" aria-describedby="emailHelp"> <label
					for="" class="error"></label>
			</div>
			<div class="mb-3">
				<div class="form-floating">
					<textarea readonly class="form-control" maxlength="100"
						placeholder="Tối đa nhập 100 ký tự..." id="floatingTextarea2"
						style="height: 100px; resize: none;"></textarea>
					<label for="floatingTextarea2">Mô tả</label>
				</div>
				<label for="" class="error txtAreaHelp"></label>
			</div>
			<div class="mb-3">
				<label for="exampleInputLink" class="form-label">Link bài
					viết</label> <input readonly type="text" class="form-control"
					id="exampleInputLink" aria-describedby="emailHelp">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			<button type="button" class="btn btn-danger js_btn-close">Exit</button>
		</form>
	</div>
</div>