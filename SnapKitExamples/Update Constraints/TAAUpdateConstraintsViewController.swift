//
//  TAAUpdateConstraintsViewController.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 27/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAAUpdateConstraintsViewController: UIViewController {
    
    //MARK: Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = TAAUpdateConstraintsView(frame: UIScreen.mainScreen().bounds)
    }
}
