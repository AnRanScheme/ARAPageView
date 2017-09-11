//
//  TestController.swift
//  TGPageView
//
//  Created by 安然  on 2017/9/6.
//  Copyright © 2017年 targetcloud. All rights reserved.
//

import UIKit

class TestController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
//        btn.setImage(UIImage(named: "1"), for: .normal)
        btn.setTitle("测试", for: .normal)
//        btn.imageView?.animationImages = [UIImage(named: "1")!,UIImage(named: "2")!,UIImage(named: "2")!]
//        btn.imageView?.animationDuration = 1
//        btn.imageView?.animationRepeatCount = 0
        btn.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc private func btnAction(_ sender: UIButton) {
        
        sender.imageView?.startAnimating()
    }
    

}
