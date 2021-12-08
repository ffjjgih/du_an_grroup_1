var urlName = location.href;

if(urlName.search("successInsertHDCT") > 0) {
    alert("Thêm món ăn thành công!");
} else if(urlName.search("errorSL=1") > 0){
	alert("Số lượng đồ ăn đã lên không được vượt quá số lượng đồ ăn order, Hãy thêm món ăn!");
} else {
    console.log("Nothing");
}