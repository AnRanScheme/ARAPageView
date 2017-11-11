//
//  testTableViewCell.swift
//  ARAPageView
//
//  Created by 安然 on 2017/9/14.
//  Copyright © 2017年 安然 . All rights reserved.
//

import UIKit

class testTableViewCell: UITableViewCell {
    
    fileprivate var childVCs : [UIViewController]!
    fileprivate var parentVC : UIViewController!
    fileprivate var contentFrame : CGRect!
//
    lazy var conView: MagiContentView = {
        let view = MagiContentView(frame: self.contentFrame,
                                   childVCs: self.childVCs,
                                   parentVC: self.parentVC)
        view.backgroundColor = .red
        return view
    }()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    convenience init(contentFrame: CGRect,
                     childVCs: [UIViewController],
                     parentVC: UIViewController,
                     style:UITableViewCellStyle,
                     reuseIdentifier:String) {
        self.init(style: style, reuseIdentifier: reuseIdentifier)
        self.childVCs = childVCs
        self.parentVC = parentVC
        self.contentFrame = contentFrame
        self.contentView.addSubview(conView)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
