//
//  ViewController.swift
//  Monster
//
//  Created by 野本エリカ on 2018/05/25.
//  Copyright © 2018年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imagenumber = 0
    
    var namenumber = 0
    
    var monsterArray: [UIImage]!
    
    var nameArray: String = ""
    
    
    @IBOutlet var monsterimage: UIImageView!
    
    @IBOutlet var monstername: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let image = UIImage(named: "monster04.png")
        monsterimage.image = image
        
        let nam = "ピンクモンスター"
        monstername.text = nam
        
        
        
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        // 表示している画像の番号を1減らす
        imagenumber -= 1
        
        // 表示している画像の番号を元に画像を表示する
        displayImage()
        
        namenumber -= 1
        
        displayName()
        
        
    }
    
    @IBAction func next(_ sender: Any) {
        
        // 表示している画像の番号を1増やす
        imagenumber += 1
        
        // 表示している画像の番号を元に画像を表示する
        displayImage()
        
        namenumber += 1
        
        displayName()
        
    }

    func displayImage() {
        
        // 画像の名前の配列
        let monsterArray = [UIImage(named: "monster04.png")!,
                            UIImage(named: "monster01.png")!,
                            UIImage(named: "monster05.png")!]
        
        // 画像の番号が正常な範囲を指しているかチェック
        
        // 範囲より下を指している場合、最後の画像を表示
        if imagenumber < 0 {
            imagenumber = 2
        }
        
        // 範囲より上を指している場合、最初の画像を表示
        if imagenumber > 2 {
            imagenumber = 0
        }
        
        // 表示している画像の番号から名前を取り出し
        monsterimage.image = monsterArray[imagenumber]
        
        
    }
    
    func displayName() {
        
        let nameArray = ["ピンクモンスター", "グリーンモンスター", "イエローモンスター"]
        
        // 範囲より下を指している場合、最後の画像を表示
        if namenumber < 0 {
            namenumber = 2
        }
        
        // 範囲より上を指している場合、最初の画像を表示
        if namenumber > 2 {
            namenumber = 0
        }
        
        // 表示している画像の番号から名前を取り出し
        monstername.text = nameArray[namenumber]
        
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

