//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Tsukasa Chinen on 2017/10/27.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!

    var omikuji = [
         "大吉"
        ,"吉"
        ,"中吉"
        ,"小吉"
        ,"末吉"
        ,"凶"
        ,"大凶"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    /* 占いが押された時の処理 */
    @IBAction func tapUranai(_ sender: UIButton) {
        /* 占いの結果をランダムに */
        let r = Int(arc4random()) % omikuji.count
        
        /* TODO: おみくじ結果をアラートで表示しましょう */
        let alert = UIAlertController(
             title: "占い結果"
            ,message: "今日のあなたの運勢は\(omikuji[r])です！"
            ,preferredStyle: .alert
        )
        
        /* TODO: アラートにOKボタンをつけて、OKが押されたら、おみくじ結果に紐ついた画像を表示する */
        alert.addAction(UIAlertAction(
             title: "OK"
            ,style: .default
            ,handler: {
                action in self.omikujiImage(result: self.omikuji[r])
            }
        ))
        present(
             alert
            ,animated: true
            ,completion: nil
        )
    }

    func omikujiImage(result: String){
        if(result == "大吉"){
            myImageView.image = UIImage(named: "daikichi.png")
        }else if(result == "吉"){
            myImageView.image = UIImage(named: "kichi.png")
        }else if(result == "中吉"){
            myImageView.image = UIImage(named: "chukichi.jpg")
        }else if(result == "小吉"){
            myImageView.image = UIImage(named: "syokichi.png")
        }else if(result == "末吉"){
            myImageView.image = UIImage(named: "suekichi.jpg")
        }else if(result == "凶"){
            myImageView.image = UIImage(named: "kyo.png")
        }else if(result == "大凶"){
            myImageView.image = UIImage(named: "daikyo.png")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
