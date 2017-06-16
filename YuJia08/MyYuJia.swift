//
//  MyYuJia.swift
//  YuJia08
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 allen. All rights reserved.
//

import Foundation

class YuJia01 {
    var x = 10 // 物件屬性
}

class YuJia02 {
    static var x1 = 23 // 類別的屬性
    static var x2:Int?
    static var x3:Int {
        return x1 * 99
    }
    var x1 = 452
    var x4 = 75
    init() {
        print(x4)
        print(YuJia02.x1)
        print(x1)
    }
}
class YuJia03 {
    var x = 98
    static var y = 377
    func f1() {
        x += 1
        YuJia03.f2()
        print("f1")
    }
    static func f1() {
        print("static f1")
    }
    static func f2() {
        // x += 1 (×)
        y += 1
        f1()
    }
}

class MyBike {
    static var count = 0
    init() {
        MyBike.count += 1
    }
}

//--------------------------
class Super1 {
    init(){print("Super : init()")}
}
class Sub11 : Super1 {
    // 沒有任何 init, 呼叫 Super1.init
}
class Sub12 : Super1 {
    override init() {
        print("Sub12:init()") // 子類別定義新的建構式，舊的一樣會被呼叫
    }
}
class Sub13 : Super1 {
    init(_ :Int){}
}
//----------------------------------------
class Super2 {
    init(){print("Super2:init()")}
    init(_:Int){print("Super2:init(Int)")}
    init(_:Double){print("Super2:init(Double)")}
}
class Sub21 : Super2 {
}
class Sub22 : Super2 {
    override init() {
        super.init(3)
        print("Sub22 : init()")
    }
    override init(_ :Int) {
        super.init(3)
    }
    init(_ :String) {
        super.init()
    }
}
//-------------------------------
class Super3 {
    init() {print("Super:init()")}
}
class Sub31 : Super3 {
    override init() {
        print("doSomething")
    }
    convenience init(_ :Int) {
        print("Sub32:init(Int)")
        self.init()
    }
    
}
//------------------------------
class TwId {
    var id:String
    convenience init(){
        self.init(false)
    }
    convenience init(_ gender:Bool) {
        self.init(gender,1)
    }
    convenience init(_ area:Int) {
        self.init(true,area)
    }
    init(_ gender:Bool, _ area:Int) {
        print("main logic")
        self.id = "A123456789"
    }
    init?(_ id:String) {
        let a = Int(arc4random_uniform(2))
        if a == 0{
            return nil
        }else{
        self.id = id
        }
    }
}
//----------------------------
class Super4 {
    init() {
        print("Super4:init()")
    }
    required init(_ x:Int){
        print("Super4:init(Int)")
    }
}
class Sub41 : Super4 {
    init(_ x:Double){
        super.init()
    }
    required init(_ x: Int) {
        super.init()
    }
}
class Sub42 : Super4 {
    
}
class Sub411 : Sub41 {
    init() {
        super.init(1.0)
    }
    
    required init(_ x: Int) {
        super.init(1)
    }
}
















