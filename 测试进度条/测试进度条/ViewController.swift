//
//  ViewController.swift
//  测试进度条
//
//  Created by 安然  on 2017/10/18.
//  Copyright © 2017年 安然 . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = ProgressButton()
        btn.setBackgroundImage(UIImage(named: "icon"), for: .normal)
        var number: CGFloat = 0.0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            number = number + 1
            btn.progress =  (number)/20
        }
        btn.sizeToFit()
        btn.center = view.center
        view.addSubview(btn)
        
        let btn1 = ProgressButton()
        btn1.setBackgroundImage(UIImage(named: "icon1"), for: .normal)
        var number1: CGFloat = 0.0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            number1 = number1 + 1
            btn1.progress =  (number1)/20
        }
        btn1.sizeToFit()
        btn1.center = CGPoint(x: UIScreen.main.bounds.width/2,
                              y: UIScreen.main.bounds.height/2 + 100.0)
        view.addSubview(btn1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

