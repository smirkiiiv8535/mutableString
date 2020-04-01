//
//  ViewController.swift
//  mutableString
//
//  Created by 林祐辰 on 2020/4/1.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         let addNewYear = NSTextAttachment()
         addNewYear.image = UIImage(named: "newYear.png")
         let addTaiwan = NSTextAttachment()
         addTaiwan.image = UIImage(named: "Taiwan.png")
         let addHouse = NSTextAttachment()
         addHouse.image = UIImage(named: "threeSec.png")
         let addMoney = NSTextAttachment()
         addMoney.image = UIImage(named: "money.png")
         let addHeart = NSTextAttachment()
         addHeart.image = UIImage(named: "heart.png")
         
         addNewYear.bounds = CGRect(x: 0, y: -6, width: 25, height: 25)
         addTaiwan.bounds = CGRect(x: 0, y: -6, width: 25, height: 25)
         addHouse.bounds = CGRect(x: 0, y: -6, width: 25, height: 25)
         addMoney.bounds = CGRect(x: 0, y: -6, width: 25, height: 25)
         addHeart.bounds = CGRect(x: 0, y: -6, width: 25, height: 25)
         
         let sentence = NSMutableAttributedString(string: "時,我和我家人都會到各個親戚走走。不管他們紅包包多少,我都能體會到長輩的")
         
         sentence.insert(NSAttributedString(attachment: addNewYear), at: 0)
         sentence.insert(NSAttributedString(attachment: addTaiwan), at: 11)
         sentence.insert(NSAttributedString(attachment: addHouse), at: 16)
         sentence.insert(NSAttributedString(attachment: addMoney), at: 29)
         sentence.append(NSAttributedString(attachment:addHeart))
           
         let content = UILabel(frame: CGRect(x:0,y:0,width:350,height:350))
         content.numberOfLines = 0
         content.attributedText = sentence
    
         view.addSubview(content)
     }


}

