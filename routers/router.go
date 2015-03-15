package routers

import (
	"github.com/astaxie/beego"
	"shop/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})

	//userRouter
	beego.Router("/user", &controllers.UserController{})
	beego.Router("/user/add", &controllers.UserController{}, "get:Add")
	beego.Router("/user/edit/:id", &controllers.UserController{}, "get:Edit")

	beego.Router("/user/adduser", &controllers.UserController{}, "post:UserAction")
	beego.Router("/user/edituser", &controllers.UserController{}, "post:UserAction")
}
