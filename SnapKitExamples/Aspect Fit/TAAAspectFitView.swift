//
//  TAAAspectFitView.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 02/08/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAAAspectFitView: UIView {
    
    private lazy var topView: UIView = self.initializeView()
    private lazy var topInnerView: UIView = self.initializeView()
    private lazy var bottomView: UIView = self.initializeView()
    private lazy var bottomInnerView: UIView = self.initializeView()
    
    private let kView1Offset = 20;
    private let kView2Center = CGPointMake(0, 50)
    private let kView2Size = CGSizeMake(200, 100)
    
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
        
        //Layout top and bottom views to each take up half of the window
        
        //topView
        self.addSubview(topView)
        
        topView.snp_makeConstraints { (make) -> Void in
            make.left.right.top.equalTo(self)
        }
        
        //bottomView
        self.addSubview(bottomView)
        
        bottomView.snp_makeConstraints { (make) -> Void in
            make.left.right.bottom.equalTo(self)
            make.top.equalTo(topView.snp_bottom)
            make.height.equalTo(topView)
        }
        
        // Inner views are configured for aspect fit with ratio of 3:1
        
        //topInnerView
        self.addSubview(topInnerView)
        
        topInnerView.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(topInnerView.snp_height).multipliedBy(3)
            
            make.width.height.lessThanOrEqualTo(topView)
            make.width.height.equalTo(topView).priorityLow()
            
            make.center.equalTo(topView)
        }
        
        //bottomInnerView
        self.addSubview(bottomInnerView)
        
        bottomInnerView.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(bottomInnerView.snp_width).multipliedBy(3)
            
            make.width.height.lessThanOrEqualTo(bottomView)
            make.width.height.equalTo(bottomView).priorityLow()
            
            make.center.equalTo(bottomView)
        }
    }
    
    //MARK: Initialize view
    
    private func initializeView() -> UIView {
        var view = UIView()
        view.backgroundColor = UIColor.randomColor()
        
        return view
    }
}
