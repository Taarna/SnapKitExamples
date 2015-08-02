//
//  TAAUpdateConstraintsView.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 27/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAAUpdateConstraintsView: UIView {

    private lazy var growingButton: UIButton = {
        var button = UIButton()
        button.setTitle("Grow Me!", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.layer.borderColor = UIColor.greenColor().CGColor
        button.layer.borderWidth = 3
        button.addTarget(self, action: "growingButtonTapped:", forControlEvents: .TouchUpInside)
        
        return button
    }()
    
    //MARK: Sizes
    
    private var kButtonWidthHeight: CGSize = CGSizeMake(100.0, 100.0)
    
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
        self.addSubview(growingButton)
        
        //button constraints
        growingButton.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(superview)

            make.width.equalTo(kButtonWidthHeight.width).priorityLow()
            make.height.equalTo(kButtonWidthHeight.height).priorityLow()

            make.width.lessThanOrEqualTo(superview)
            make.height.lessThanOrEqualTo(superview)
        }
    }
    
    //MARK: Button action
    
    func growingButtonTapped(sender: UIButton!) {
        println("growingButtonTapped")
        self.kButtonWidthHeight = CGSizeMake(self.kButtonWidthHeight.width * 1.3, self.kButtonWidthHeight.height * 1.3);
        
        // tell constraints they need updating
        self.setNeedsUpdateConstraints()
        
        // update constraints now so we can animate the change
        self.updateConstraintsIfNeeded()
        
        UIView.animateWithDuration(0.4, animations: {
            self.layoutIfNeeded()
            println("animateWithDuration")
            }, completion: { finished in
        })
    }
    
    //MARK: - Update constraints
    
    override func updateConstraints() {
        println("updateConstrains()")
        let superview = self;
        
        growingButton.snp_updateConstraints { (make) -> Void in
            make.center.equalTo(superview)
            
            make.width.lessThanOrEqualTo(superview)
            make.width.equalTo(kButtonWidthHeight.width).priorityLow()
        
            make.height.lessThanOrEqualTo(superview)
            make.height.equalTo(kButtonWidthHeight.height).priorityLow()
        }
        
        super.updateConstraints()
    }
}
