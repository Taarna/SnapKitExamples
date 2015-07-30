//
//  TAABasicViewController.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 23/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAABasicViewController: UIViewController {

    //MARK: Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = TAABasicView(frame: UIScreen.mainScreen().bounds)
    }
}
