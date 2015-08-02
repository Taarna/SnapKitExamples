//
//  TAAUsingConstantsView.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 02/08/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAAUsingConstantsView: UIView {

    private lazy var view1: UIView = self.initializeView()
    private lazy var view2: UIView = self.initializeView()
    
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
        
        //view1
        self.addSubview(view1)
        
        //view2
        self.addSubview(view2)
        
        //view1 constraints
        view1.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(kView1Offset)
            make.left.equalTo(kView1Offset)
            make.bottom.equalTo(-kView1Offset)
            make.right.equalTo(-kView1Offset)
        }
        
        //view2 constraints
        view2.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(kView2Center)
            make.size.equalTo(kView2Size)
        }
    }
    
    //MARK: Initialize view
    
    private func initializeView() -> UIView {
        var view = UIView()
        view.backgroundColor = UIColor.randomColor()
        view.layer.borderColor = UIColor.blackColor().CGColor
        view.layer.borderWidth = 2
        
        return view
    }
}
