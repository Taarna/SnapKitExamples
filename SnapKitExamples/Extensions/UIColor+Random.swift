//
//  UIColor+Random.swift
//  SnapExamples
//
//  Created by Ivana Rast on 02/08/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

public extension UIColor {

	class func randomColor() -> UIColor {
		
		let red:CGFloat = CGFloat(drand48())
		let green:CGFloat = CGFloat(drand48())
		let blue:CGFloat = CGFloat(drand48())
		
		return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
	}
}
