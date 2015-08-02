//
//  TAAMainTableViewController.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 23/07/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit
import SnapKit

class TAAMainTableViewController: UITableViewController {
    
    private let cellIdentifier = "CellIdentifier"
    
    private let titles: [String] = ["Basic", "Update Constraints",
        "Remake Constraints", "Using Constants", "Composite Edges",
        "Aspect Fit"]
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        self.navigationController?.navigationBar.translucent = false
    }
    
    //MARK: - UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = titles[indexPath.row]
        
        return cell
    }
    
    //MARK: - UITableViewDelegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let viewController: UIViewController
        
        switch indexPath.row {
        case 0:
            let viewController = TAABasicViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        case 1:
            let viewController = TAAUpdateConstraintsViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        case 2:
            let viewController = TAARemakeConstraintsViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        case 3:
            let viewController = TAAUsingConstantsViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        case 4:
            let viewController = TAACompositeEdgesViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        case 5:
            let viewController = TAAAspectFitViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        default:
            return
        }
    }
}
