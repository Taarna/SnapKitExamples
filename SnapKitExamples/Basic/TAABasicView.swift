//
//  TAABasicView.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 23/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAABasicView: UIView {
    
    private lazy var view1: UIView = self.initializeView()
    private lazy var view2: UIView = self.initializeView()
    private lazy var view3: UIView = self.initializeView()
    
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
        self.addSubview(view1)
        
        //view2
        self.addSubview(view2)
        
        //view3
        self.addSubview(view3)
        
        //view1
        view1.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(superview.snp_top).offset(kPadding)
            make.left.equalTo(superview.snp_left).offset(kPadding)
            make.bottom.equalTo(view3.snp_top).offset(-kPadding)
            make.right.equalTo(view2.snp_left).offset(-kPadding)
            
            make.width.equalTo(view2.snp_width)
            
            make.height.equalTo(view2)
            make.height.equalTo(view3)
        }
        
        //view2
        view2.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(superview.snp_top).offset(kPadding)
            make.left.equalTo(view1.snp_right).offset(kPadding)
            make.bottom.equalTo(view3.snp_top).offset(-kPadding)
            make.right.equalTo(superview.snp_right).offset(-kPadding)
            
            make.width.equalTo(view1.snp_width)
            
            make.height.equalTo(view1)
            make.height.equalTo(view3)
        }
        
        //view3
        view3.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(view1.snp_bottom).offset(kPadding)
            make.left.equalTo(superview.snp_left).offset(kPadding)
            make.bottom.equalTo(superview.snp_bottom).offset(-kPadding)
            make.right.equalTo(superview.snp_right).offset(-kPadding)
            
            make.height.equalTo(view1)
            make.height.equalTo(view2)
        }
    }
    
    //MARK: Initialize buttons
    
    private func initializeView() -> UIView {
        var view = UIView()
        view.backgroundColor = UIColor.randomColor()
        view.layer.borderColor = UIColor.blackColor().CGColor
        view.layer.borderWidth = 2
        
        return view
    }
}
