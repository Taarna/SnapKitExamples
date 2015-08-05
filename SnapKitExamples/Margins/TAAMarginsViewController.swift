//
//  TAAMarginsViewController.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 05/08/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAAMarginsViewController: UIViewController {

    //MARK: Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = TAAMarginsView(frame: UIScreen.mainScreen().bounds)
    }
}
