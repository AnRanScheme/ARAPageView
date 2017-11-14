//
//  ProgressButton.swift
//  Smm
//
//  Created by 安然  on 2017/10/18.
//  Copyright © 2017年 蔡杨振宇. All rights reserved.
//

import UIKit

class ProgressButton: UIButton {
    
    lazy var progressLayer: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = UIColor.white.cgColor
        layer.opacity = 0.3
        layer.frame = self.frame
        return layer
    }()

    var progress: CGFloat = 0.0 {
        didSet{
            if (progress <= 0) {
                self.progressLayer.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            }
            
            else if (progress <= 1) {
                self.progressLayer.frame = CGRect(x: 0, y: 0, width: progress * self.frame.width, height: self.frame.height)
            }
            
            else {
                self.progressLayer.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
            }
        }
    }
    
    var progressColor: UIColor = UIColor.white {
        didSet{
            progressLayer.backgroundColor = progressColor.cgColor
        }
    }
    
    // MARK: - 系统方法

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.addSublayer(progressLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
