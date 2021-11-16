// check name
function is_fullname(fullname) {
    var nameregex = /^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$/;
    if (fullname.match(nameregex)) {
        return true;
    }
    else {
        return false;
    }
}

function checkFormName() {
    var name = document.getElementById('exampleInputFullName1').value;
    if (is_fullname(name) == false) {
        document.getElementById('exampleInputFullName1').style.borderColor = "red";
        document.getElementById('nameHelp').innerHTML = "Tên không đúng định dạng";
    } else {
        document.getElementById('exampleInputFullName1').style.borderColor = "green";
        document.getElementById('nameHelp').innerHTML = "";
    }
}

// check số điện thoại
function is_phone(phonenumber) {
    var phoneregex = /^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$/;
    if (phonenumber.match(phoneregex)) {
        return true;
    }
    else {
        return false;
    }
}

function checkFormPhone() {
    var phone = document.getElementById('exampleInputPhoneNume1').value;
    if (is_phone(phone) == false) {
        document.getElementById('exampleInputPhoneNume1').style.borderColor = "red";
        document.getElementById('phoneHelp').innerHTML = "Số điện thoại không đúng định dạng";
    } else {
        document.getElementById('exampleInputPhoneNume1').style.borderColor = "green";
        document.getElementById('phoneHelp').innerHTML = "";
    }
}

// check match password
var check = function(){
    if(document.getElementById('InputNewPass1').value ==
    document.getElementById('InputNewPass2').value){
        document.getElementById('newPass2Help').innerHTML = "";
        document.getElementById('newPass2HelpSuc').innerHTML = "Password matching";
        document.getElementById('InputNewPass1').style.borderColor = "green";
        document.getElementById('InputNewPass2').style.borderColor = "green";
    } else {
        document.getElementById('newPass2HelpSuc').innerHTML = "";
        document.getElementById('newPass2Help').innerHTML = "Password not matching";
        document.getElementById('InputNewPass1').style.borderColor = "red";
        document.getElementById('InputNewPass2').style.borderColor = "red";
    }
}