package forms

import (
	"github.com/astaxie/beego/validation"
)

var str string //存放验证返回信息
var flag bool  //判断验证结果

type User struct {
	Name  string `valid:"Required"`
	Email string `valid:"Email"`
}

func CheckFormsName(userName string) (sth string, result bool) {

	u := User{Name: userName}
	valid := validation.Validation{}
	if v := valid.Required(u.Name, "用户名").Message("不能为空！"); !v.Ok {
		str = v.Error.Key + v.Error.Message
		flag = false
	} else {
		str = userName
		flag = true
	}
	return str, flag
}

func CheckFormsEmail(email string) (sth string, result bool) {

	u := User{Email: email}
	valid := validation.Validation{}
	if v := valid.Email(u.Email, "邮箱").Message("格式不对！"); !v.Ok {
		str = v.Error.Key + v.Error.Message
		flag = false
	} else {
		str = email
		flag = true
	}
	return str, flag
}
