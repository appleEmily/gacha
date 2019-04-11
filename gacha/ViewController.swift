//
//  ViewController.swift
//  gacha
//
//  Created by 野崎絵未里 on 2019/04/11.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func gacha() {
        self.performSegue(withIdentifier: "result", sender: nil)
            
        
    }

}

