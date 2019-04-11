//
//  ResultViewCOntroller.swift
//  gacha
//
//  Created by 野崎絵未里 on 2019/04/11.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit



class ResultViewController: UIViewController {
    @IBOutlet var BackGroundView: UIImageView!
    
    @IBOutlet var monsterView: UIImageView!
    
    
    @IBAction func back() {
        dismiss(animated: true, completion: nil)
    }
    
    var monsterArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let number = Int.random(in: 0..<10)
        
        monsterArray = [UIImage(named: "monster001.png")!,
                        UIImage(named: "monster002.png")!,
                        UIImage(named: "monster003.png")!,
                        UIImage(named: "monster004.png")!,
                        UIImage(named: "monster005.png")!,
                        UIImage(named: "monster006.png")!,
                        UIImage(named: "monster007.png")!,
                        UIImage(named: "monster008.png")!,
                        UIImage(named: "monster009.png")!,
                        UIImage(named: "monster010.png")!]
                        
        
        
        monsterView .image = monsterArray[number]
        
        if number == 9 {
            BackGroundView.image = UIImage(named: "bg_gold@2x.png")!
        } else if number > 6 {
            BackGroundView.image = UIImage(named: "bg_red@2x.png")!
        } else {
            BackGroundView.image = UIImage(named: "bg_blue@2x.png")!
        }
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: 2 * Double.pi)
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        animation.duration = 10
        animation.repeatCount = Float.infinity
        BackGroundView.layer.add(animation, forKey: nil)
        
        let animation2 = CABasicAnimation(keyPath: "transform")
        
        animation2.fromValue = NSNumber(value: 0)
        animation2.toValue = NSNumber(value: 4 * Double.pi)
        animation2.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateY)
        animation2.duration = 20
        animation2.repeatCount = Float.infinity
        monsterView.layer.add(animation, forKey: nil)
        
        
    }


}
