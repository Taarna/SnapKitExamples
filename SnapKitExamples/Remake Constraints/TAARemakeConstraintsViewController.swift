//
//  TAARemakeConstraintsViewController.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 30/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAARemakeConstraintsViewController: UIViewController {

    //MARK: Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = TAARemakeConstraintsView(frame: UIScreen.mainScreen().bounds)
    }
}
