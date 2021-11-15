var urlName = location.href;
console.log(urlName);


var err = urlName.search("error");
var suc = urlName.search("success");

if(err > 0){
    alert("Chưa có tài khoản, hãy thử lại");
} else if(suc > 0) {
    alert("Đăng nhập thành công");
} else {
    console.log("Nothing");
}