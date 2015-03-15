package controllers

import (
	"github.com/astaxie/beego" //beego核心
	"shop/forms"               //表单验证
	"shop/models"              //user数据层
	"strconv"                  //字符转换
)

type UserController struct {
	beego.Controller
}

func (c *UserController) Get() {
	flag, list := models.UserList()
	if flag == true {
		c.Data["list"] = list
	}
	c.TplNames = "user/index.html"
}

func (c *UserController) Add() {
	c.TplNames = "user/add.html"
}

func (c *UserController) Edit() {

	id := c.Ctx.Input.Param(":id")
	//类型转换
	idValue, _ := strconv.Atoi(id)
	flag, result := models.FindOne(idValue)

	if flag == true {
		c.Data["info"] = result
		c.TplNames = "user/edit.html"
	} else {
		c.Ctx.Redirect(302, "/user")
	}
}

func (c *UserController) UserAction() {

	//接受参数
	id := c.GetString("id")
	username := c.GetString("username")
	email := c.GetString("email")

	//验证用户名
	errInfo, flagN := forms.CheckFormsName(username)
	if flagN == false {
		c.Ctx.WriteString(errInfo)
		return
	}
	//验证邮箱
	errInfo, flagE := forms.CheckFormsEmail(email)
	if flagE == false {
		c.Ctx.WriteString(errInfo)
		return
	}

	//用户的增加和修改操作
	if id == "" {
		//添加会员
		if result := models.AddUser(username, email); !result {
			c.Ctx.WriteString("插入数据库失败")
			return
		}
		//c.Ctx.WriteString("插入数据库成功")
		c.Ctx.Redirect(302, "/user")
	} else {
		//编辑会员
		idValue, _ := strconv.Atoi(id)
		flag, _ := models.FindOne(idValue)
		//存在数据
		if flag == true {
			user := models.EcsUsers{UserId: idValue, UserName: username, Email: email}
			if result := models.UpdateUser(user); result == true {
				c.Ctx.Redirect(302, "/user")
			}

		} else {
			c.Ctx.Redirect(302, "/user")
		}
	}

}
