package models

import (
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type EcsUsers struct {
	UserId   int `orm:"pk"`
	UserName string
	Email    string
}

func init() {
	// 需要在init中注册定义的model
	orm.RegisterModel(new(EcsUsers))
}

func UserList() (flag bool, result []orm.Params) {

	o := orm.NewOrm()
	o.Using("shop")

	var maps []orm.Params
	_, err := o.QueryTable("ecs_users").Values(&maps)
	if err == nil {
		flag = true
	} else {
		flag = false
	}
	return flag, maps
}

func AddUser(username, email string) bool {
	o := orm.NewOrm()
	var user EcsUsers
	user.UserName = username
	user.Email = email

	_, err := o.Insert(&user)
	if err == nil {
		return true
	} else {
		return false
	}
}

func FindOne(id int) (flag bool, result EcsUsers) {

	var str EcsUsers
	o := orm.NewOrm()
	user := EcsUsers{UserId: id}
	err := o.Read(&user)

	if err == orm.ErrNoRows {
		flag = false
		str = user
	} else {
		flag = true
		str = user
	}

	return flag, str
}

func UpdateUser(data EcsUsers) bool {

	o := orm.NewOrm()
	user := EcsUsers{UserId: data.UserId}
	if o.Read(&user) == nil {
		user.UserName = data.UserName
		user.Email = data.Email
		if _, err := o.Update(&user); err == nil {
			return true
		}
	}
	return false
}
