//
//  TAARemakeConstraintsView.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 30/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAARemakeConstraintsView: UIView {

    private lazy var movingButton: UIButton = {
        var button = UIButton()
        button.setTitle("Move Me!", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.layer.borderColor = UIColor.greenColor().CGColor
        button.layer.borderWidth = 3
        button.addTarget(self, action: "movingButtonTapped:", forControlEvents: .TouchUpInside)
        
        return button
    }()
    private var topLeft = true
    
    //MARK: - Sizes
    
    private let kButtonSize = 100
    private let kOffset = 10
    
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
        
        //button
        self.addSubview(movingButton)
        
        //button constraints
        movingButton.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(kButtonSize)
            make.height.equalTo(kButtonSize)
            make.top.equalTo(superview).offset(kOffset)
            make.left.equalTo(superview).offset(kOffset)
        }
    }
    
    //MARK: Update constraints
    
    override func updateConstraints() {
        let superview = self
        
        movingButton.snp_remakeConstraints { (make) -> Void in
            make.width.equalTo(kButtonSize)
            make.height.equalTo(kButtonSize)
            
            if topLeft {
                make.left.equalTo(superview).offset(kOffset)
                make.top.equalTo(superview).offset(kOffset)
            } else {
                make.bottom.equalTo(superview).offset(-kOffset)
                make.right.equalTo(superview).offset(-kOffset)
            }
        }
        
        super.updateConstraints()
    }
    
    //MARK: Button action
    
    func movingButtonTapped(sender: UIButton!) {
        topLeft = !topLeft
        
        self.setNeedsUpdateConstraints()
        
        self.updateConstraintsIfNeeded()
        
        UIView.animateWithDuration(0.4) { () -> Void in
            self.layoutIfNeeded()
        }
    }
}
