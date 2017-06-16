//
//  MyClasses.swift
//  YuJia08
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 allen. All rights reserved.
//

import Foundation

class MyClass01{}
class MyClass02 {
    var x:Int
    init(x:Int) {
        self.x = x
    }
}
class MyClass03 {
    var x = 2323
    init(){}
}
class MyClass04 {
    var x:Int?
}
//----------------------------
class MyClass05 {
    var x: Int{
        // 一定要有 get
        get{
            return 77
        }
        // 可以不要 set
        set{
            //new value
        }
    }
}
class MyClass06 {
    var y:Int = 123
    var x:Int{
        return y * y
    }
}
//------------------------------
class MyClass07 {
    var x = 0 {
        willSet{
            // new value
        }
        didSet{
            // old value
        }
    }
}
