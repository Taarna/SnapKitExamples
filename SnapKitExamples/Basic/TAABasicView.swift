//
//  TAABasicView.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 23/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit
import SnapKit

class TAABasicView: UIView {
    
    private let view1 = UIView()
    private let view2 = UIView()
    private let view3 = UIView()
    
    //MARK: - Sizes
    
    private let kPadding: Float = 10.0
    
    //MARK: - Life cycle
    
    override init(frame aRect: CGRect) {
        super.init(frame: aRect)
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.initializeElements()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: - Private methods
    
    //MARK: Initialize elements and set constraints
    
    private func initializeElements() {
    
        let superview = self
        
        //view1
        view1.backgroundColor = UIColor.greenColor()
        view1.layer.borderColor = UIColor.blackColor().CGColor
        view1.layer.borderWidth = 2
        
        self.addSubview(view1)
        
        //view2
        view2.backgroundColor = UIColor.redColor()
        view2.layer.borderColor = UIColor.blackColor().CGColor
        view2.layer.borderWidth = 2
        
        self.addSubview(view2)
        
        //view3
        view3.backgroundColor = UIColor.blueColor()
        view3.layer.borderColor = UIColor.blackColor().CGColor
        view3.layer.borderWidth = 2
        
        self.addSubview(view3)
        
        
        view1.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(superview.snp_top).offset(kPadding)
            make.left.equalTo(superview.snp_left).offset(kPadding)
            make.bottom.equalTo(view3.snp_top).offset(-kPadding)
            make.right.equalTo(view2.snp_left).offset(-kPadding)
            
            make.width.equalTo(view2.snp_width)
            
            make.height.equalTo(view2)
            make.height.equalTo(view3)
        }
        
        view2.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(superview.snp_top).offset(kPadding)
            make.left.equalTo(view1.snp_right).offset(kPadding)
            make.bottom.equalTo(view3.snp_top).offset(-kPadding)
            make.right.equalTo(superview.snp_right).offset(-kPadding)
            
            make.width.equalTo(view1.snp_width)
            
            make.height.equalTo(view1)
            make.height.equalTo(view3)
        }
        
        view3.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(view1.snp_bottom).offset(kPadding)
            make.left.equalTo(superview.snp_left).offset(kPadding)
            make.bottom.equalTo(superview.snp_bottom).offset(-kPadding)
            make.right.equalTo(superview.snp_right).offset(-kPadding)
            
            make.height.equalTo(view1)
            make.height.equalTo(view2)
        }
    }
}
