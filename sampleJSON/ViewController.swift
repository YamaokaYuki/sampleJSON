//
//  ViewController.swift
//  sampleJSON
//
//  Created by 山岡由季 on 2018/01/23.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func tapJSON001(_ sender: UIButton) {
        
        //読み込むファイルパスの取得
        let path = Bundle.main.path(forResource: "JSON001", ofType: "json")
       
        //Date型(人が読めない形式)の形でファイルの内容を取得
        var jsondata = NSData(contentsOfFile:path!)
        
        //配列に変換
        var jsonArray = (try! JSONSerialization.jsonObject(with: Data.init(referencing: jsondata!))) as! Array<Any>
        
        //配列をループしてデバックエリアに表示
        
        for dat in jsonArray{
            print("取得できた値:\(dat)")
        }
        
        
    }
    
    //TODOJSON002.jsonを読み込んで「ダージリンのお値段は600ペソです」となるようなフォーマットでデバックエリアに文章を表示してください
    //ヒント:配列を表示する際、Any型からDictionary型へ型変換が必要
    
    @IBAction func tapJSON002(_ sender: UIButton) {
        
        //読み込むファイルパスの取得
        let path = Bundle.main.path(forResource: "JOSN002", ofType: "json")
        
        //Date型(人が読めない形式)の形でファイルの内容を取得
        var jsondata = NSData(contentsOfFile:path!)
        
        //配列に変換
        var jsonArray = (try! JSONSerialization.jsonObject(with: Data.init(referencing: jsondata!))) as! Array<Any>
        
        //配列をループしてデバックエリアに表示
        
        for dat in jsonArray{
            print("取得できた値:\(dat)")
            //よくやる変換方法。　超大事
            var dic = dat as! NSDictionary
            
            var name = dic["name"] as! String
            var price = dic["price"] as! Int
            
            print("\(name)のお値段は\(price)ペソです")
        }
        
    }
    
    //TODO: JSON003.jsonを読み込んで「関東の餅:切り餅、醤油:濃口、月見団子:丸型」となるようなフォーマットでデバックエリアに出す
    
    @IBAction func tapJSON003(_ sender: UIButton) {
        
        //読み込むファイルパスの取得
        let path = Bundle.main.path(forResource: "JSON003", ofType: "json")
        
        //Date型(人が読めない形式)の形でファイルの内容を取得
        var jsondata = NSData(contentsOfFile:path!)
        
        //配列に変換
        var jsonArray = (try! JSONSerialization.jsonObject(with: Data.init(referencing: jsondata!))) as! Dictionary<String,Dictionary<String,String>>
        
        //配列をループしてデバックエリアに表示
        
        for (key,value) in jsonArray{
            print("\(key)の餅:")

            for (key01,value01) in value{
            print("\(key01),\(value01)")
        }
            
        }
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

