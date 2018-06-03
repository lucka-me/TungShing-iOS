//
//  Generator.swift
//  Old Tung Shing for Coders
//
//  Created by Lucka on 8/9/17.
//  Copyright © 2017年 Lucka. All rights reserved.
//

import UIKit
import Foundation

/* ********** 基础数据 ********** */
/* 事件结构 */
struct Event {
    var name: String
    var good: String
    var bad: String
    var isWeekends: Bool
}

struct SpecialEvent {
    var date: Int
    var isGood: Bool
    var name: String
    var description: String
}

class TSGenerator: NSObject {
    /* ********** 表 ********** */
    // 事件表
    var Activities = [
        Event.init(name: "写单元测试", good: "写单元测试将减少出错", bad: "写单元测试会降低你的开发效率", isWeekends: false),
        Event.init(name: "洗澡", good:"你几天没洗澡了？",bad:"会把设计方面的灵感洗掉", isWeekends: true),
        Event.init(name: "锻炼一下身体", good:"",bad:"能量没消耗多少，吃得却更多", isWeekends: true),
        Event.init(name: "抽烟", good:"抽烟有利于提神，增加思维敏捷",bad:"除非你活够了，死得早点没关系", isWeekends: true),
        Event.init(name: "白天上线", good:"今天白天上线是安全的",bad:"可能导致灾难性后果", isWeekends: false),
        Event.init(name: "重构", good:"代码质量得到提高",bad:"你很有可能会陷入泥潭", isWeekends: false),
        Event.init(name: "使用%t", good:"你看起来更有品位",bad:"别人会觉得你在装逼", isWeekends: false),
        Event.init(name: "跳槽", good:"该放手时就放手",bad:"鉴于当前的经济形势，你的下一份工作未必比现在强", isWeekends: false),
        Event.init(name: "招人", good:"你面前这位有成为牛人的潜质",bad:"这人会写程序吗？", isWeekends: false),
        Event.init(name: "面试", good:"面试官今天心情很好",bad:"面试官不爽，会拿你出气", isWeekends: false),
        Event.init(name: "提交辞职申请", good:"公司找到了一个比你更能干更便宜的家伙，巴不得你赶快滚蛋",bad:"鉴于当前的经济形势，你的下一份工作未必比现在强", isWeekends: false),
        Event.init(name: "申请加薪", good:"老板今天心情很好",bad:"公司正在考虑裁员", isWeekends: false),
        Event.init(name: "晚上加班", good:"晚上是程序员精神最好的时候",bad:"", isWeekends: true),
        Event.init(name: "在妹子面前吹牛", good:"改善你矮穷挫的形象",bad:"会被识破", isWeekends: true),
        Event.init(name: "撸管", good:"避免缓冲区溢出",bad:"强撸灰飞烟灭", isWeekends: true),
        Event.init(name: "浏览成人网站", good:"重拾对生活的信心",bad:"你会心神不宁", isWeekends: true),
        Event.init(name: "命名变量\"%v\"", good:"",bad:"", isWeekends: false),
        Event.init(name: "写超过%l行的方法", good:"你的代码组织的很好，长一点没关系",bad:"你的代码将混乱不堪，你自己都看不懂", isWeekends: false),
        Event.init(name: "提交代码", good:"遇到冲突的几率是最低的",bad:"你遇到的一大堆冲突会让你觉得自己是不是时间穿越了", isWeekends: false),
        Event.init(name: "代码复审", good:"发现重要问题的几率大大增加",bad:"你什么问题都发现不了，白白浪费时间", isWeekends: false),
        Event.init(name: "开会", good:"写代码之余放松一下打个盹，有益健康",bad:"小心被扣屎盆子背黑锅", isWeekends: false),
        Event.init(name: "打DOTA", good:"你将有如神助",bad:"你会被虐的很惨", isWeekends: true),
        Event.init(name: "晚上上线", good:"晚上是程序员精神最好的时候",bad:"你白天已经筋疲力尽了", isWeekends: false),
        Event.init(name: "修复BUG", good:"你今天对BUG的嗅觉大大提高",bad:"新产生的BUG将比修复的更多", isWeekends: false),
        Event.init(name: "设计评审", good:"设计评审会议将变成头脑风暴",bad:"人人筋疲力尽，评审就这么过了", isWeekends: false),
        Event.init(name: "需求评审", good:"",bad:"", isWeekends: false),
        Event.init(name: "上微博", good:"今天发生的事不能错过",bad:"今天的微博充满负能量", isWeekends: true),
        Event.init(name: "上AB站", good:"还需要理由吗？",bad:"满屏兄贵亮瞎你的眼", isWeekends: true),
        Event.init(name: "玩FlappyBird", good:"今天破纪录的几率很高",bad:"除非你想玩到把手机砸了", isWeekends: true),
        ]
    
    // 完成事件表
    var finalGoodEventList: [Event] = []
    var finalBadEventList: [Event] = []
    
    // 待替换内容
    var Tools = ["Eclipse写程序", "MSOffice写文档", "记事本写程序", "Windows8", "Linux", "MacOS", "IE", "Android设备", "iOS设备"];
    var varNames = ["jieguo", "huodong", "pay", "expire", "zhangdan", "every", "free", "i1", "a", "virtual", "ad", "spider", "mima", "pass", "ui"];
    
    // 特殊事件表
    var SpecialActs = [
        SpecialEvent.init(date: 214, isGood: false, name: "待在男（女）友身边", description: "脱团火葬场，入团保平安。"),
        ]
    
    // 座位朝向表
    var Derections = ["北方", "东北方", "东方", "东南方", "南方", "西南方", "西方", "西北方"]
    
    // 饮料表
    var Drinks = ["水", "茶", "红茶", "绿茶", "咖啡", "奶茶", "可乐", "鲜奶", "豆奶", "果汁", "果味汽水", "苏打水", "运动饮料", "酸奶", "酒"];
    
    /* 时间相关变量 */
    var Date = NSDate()
    var dateFormatController = DateFormatter()
    var FullDate: Int
    var Year: Int
    
    /* 事件相关变量*/
    var numGood: Int
    var numBad: Int
    
    /* ********** 函数区域 ********** */
    
    /* 构造函数*/
    override init() {
        /* 处理日期 */
        dateFormatController.dateFormat = "yyyyMMdd"
        FullDate = Int(dateFormatController.string(from: Date as Date))! // 获得整数形式的日期
        Year = FullDate / 10000
        numGood = 0
        numBad = 0
        /*
        /* 两个关键变量 */
        var n = FullDate % 11117;
        var indexSeed = 98
        for _ in 0 ..< 100 + indexSeed {
            n = n * n;
            n = n % 11117;
        }
        numGood = n % 3 + 2
        
        indexSeed = 87
        for _ in 0 ..< 100 + indexSeed {
            n = n * n;
            n = n % 11117;
        }
        numBad = n % 3 + 2
         */
    }
    
    /* 生成一切 */
    func generate() {
        // 处理事件表
        // 筛去不合当日条件的事件
        if (isWeekends()) {
            var index = 0
            repeat {
                if (Activities[index].isWeekends != true) {
                    Activities.remove(at: index)
                    index -= 1
                }
                index += 1
            } while (index < Activities.count)
        }
        
        // 生成宜忌事件目录
        numGood = getRandom(FullDate: FullDate, indexSeed: 98) % 3 + 2
        numBad = getRandom(FullDate: FullDate, indexSeed: 87) % 3 + 2
        let CountofActs = Activities.count
        for i:Int in 0 ..< CountofActs - (numBad + numGood) {
            let index = getRandom(FullDate: FullDate, indexSeed: i) % Activities.count
            Activities.remove(at: index)
        }
        
        // 查找并替换字符串
        for i:Int in 0 ..< Activities.count {
            if (Activities[i].name.contains("%t")) {
                // let nameStringIndex = Range<String.Index>(Activities[i].name.startIndex..<Activities[i].name.endIndex)
                Activities[i].name.replaceSubrange(Activities[i].name.range(of: "%t")!, with: Tools[getRandom(FullDate: FullDate, indexSeed: 11) % Tools.count])
            } else if (Activities[i].name.contains("%v")) {
                // let nameStringIndex = Range<String.Index>(Activities[i].name.startIndex..<Activities[i].name.endIndex)
                Activities[i].name.replaceSubrange(Activities[i].name.range(of: "%v")!, with: varNames[getRandom(FullDate: FullDate, indexSeed: 12) % varNames.count])
            } else if (Activities[i].name.contains("%l")) {
                // let nameStringIndex = Range<String.Index>(Activities[i].name.startIndex..<Activities[i].name.endIndex)
                Activities[i].name.replaceSubrange(Activities[i].name.range(of: "%l")!, with:  String(getRandom(FullDate: FullDate, indexSeed: 12) % 247 + 30))
            }
        }
        
        // 生成宜表
        finalGoodEventList += getSpecialActs(SpecialActs: SpecialActs, isGood: true, FullDate: FullDate)
        for i: Int in 0 ..< numGood {
            finalGoodEventList.append(Activities[i])
        }
        // 生成不宜表
        finalBadEventList += getSpecialActs(SpecialActs: SpecialActs, isGood: false, FullDate: FullDate)
        for i: Int in 0 ..< numBad {
            finalBadEventList.append(Activities[numGood + i])
        }
        
        // 饮料表处理
        let CountofDrink = Drinks.count
        for i:Int in 0 ..< CountofDrink - 2 {
            Drinks.remove(at: getRandom(FullDate: FullDate, indexSeed: i) % Drinks.count)
        }
    }
    
    /* 今天是 */
    func getHeaderString() -> String {
        dateFormatController.dateFormat = "yyyy年MM月dd日 EEEE" // 设定日期输出格式
        return "今天是 \(dateFormatController.string(from: Date as Date))"
    }
    
    /* 座位朝向 */
    func getDirectionString() -> String {
        return "面向\(Derections[getRandom(FullDate: FullDate, indexSeed: 2) % Derections.count])写程序，BUG最少"
    }
    
    /* 今日宜饮 */
    func getDrinkString() -> String {
        return "\(Drinks[0])，\(Drinks[1])"
    }
    
    /* 女神亲近指数 */
    func getGodessString() -> String {
        return "\(getStars(num: getRandom(FullDate: FullDate, indexSeed: 6) % 5 + 1))"
    }
    
    /* 返回好坏事件数量 */
    func getGoodCount() -> Int {
        return numGood
    }
    
    func getBadCount() -> Int {
        return numBad
    }
    
    /* 判断是否周末 */
    func isWeekends ()->Bool {
        let Date = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E"
        let Weekday = dateFormatter.string(from: Date as Date)
        
        var result:Bool = false
        if (Weekday == "周日" || Weekday == "周六") {
            result = true
        }
        return result
    }
    
    /* 用当天日期获得一个随机数 */
    func getRandom(FullDate:Int, indexSeed:Int)->Int {
        var n = FullDate % 11117;
        for _ in 0 ..< 100 + indexSeed {
            n = n * n;
            n = n % 11117;   // 11117 是个质数
        }
        return n;
    }
    
    /* 从数组中选择 num 个元素*/
    func pickRandom (SourceArray:[Any], num:Int, FullDate:Int)->[Any] {
        let Count = SourceArray.count
        var Result = SourceArray
        for i:Int in 0 ..< Count - 2 {
            let index = getRandom(FullDate: FullDate, indexSeed: i) % Result.count
            Result.remove(at: index)
        }
        return Result
    }
    
    /* 返回星形指数 */
    func getStars(num:Int)->String {
        var n = 0;
        var Stars:String = ""
        while (n < num) {
            Stars += "★";
            n += 1;
        }
        while(n < 5) {
            Stars += "☆";
            n += 1;
        }
        return Stars
    }
    
    /* 输出特殊事件 */
    func getSpecialActs (SpecialActs:[SpecialEvent], isGood: Bool, FullDate: Int) -> [Event] {
        var list: [Event] = []
        for i:Int in 0 ..< SpecialActs.count {
            if (SpecialActs[i].date + 10000 * Year == FullDate && SpecialActs[i].isGood == isGood) {
                list.append(Event(name: SpecialActs[i].name, good: SpecialActs[i].description, bad: "", isWeekends: true))
            }
        }
        return list
    }

}

var TungShing: TSGenerator = TSGenerator()
