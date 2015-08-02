//
//  TAAUsingConstantsViewController.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 02/08/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAAUsingConstantsViewController: UIViewController {

    //MARK: Life cycle
    
    override func loadView() {
        super.loadView()
        
        view = TAAUsingConstantsView(frame: UIScreen.mainScreen().bounds)
    }
}
