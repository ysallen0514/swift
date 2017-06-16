//
//  main.swift
//  YuJia08
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 allen. All rights reserved.
//

import Foundation

var obj1 = YuJia01()
print(obj1.x)

print(YuJia02.x1)
var obj2 = YuJia02()
YuJia03.f2()
print("----------------------")
var b1 = MyBike()
var b2 = MyBike()
var b3 = MyBike()
var b4 = MyBike()
var b5 = MyBike()
print(MyBike.count)
print("------------------------")

var obj3 = Super1()
var obj4 = Sub11()
var obj5 = Sub12()
var obj6 = Sub13(1)
print("---------------------")
var obj7 = Sub21()
var obj71 = Sub21(1)
var obj72 = Sub21(6.6)
var obj8 = Sub22()
var obj81 = Sub22(1)
var obj82 = Sub22("..")
print("---------------------")
var obj9 = Sub31()
var obj91 = Sub31(1)
print("-----------------------")
var obja = Sub41(1.0)
var obja1 = Sub41(1)
var objb = Sub42()
var objb1 = Sub42(1)
print("-----------------------")
var myid = TwId("A123456789")
if myid == nil{
    print("XX")
}else{
    print("OK")
}


















