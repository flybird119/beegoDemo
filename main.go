package main

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "shop/routers"
)

func init() {
	orm.RegisterDriver("mysql", orm.DR_MySQL)
	orm.RegisterDataBase("default", "mysql", "root:@/shop?charset=utf8")
}

func main() {
	beego.Run()
}
