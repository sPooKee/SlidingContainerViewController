//
//  ViewController.swift
//  SlidingContainerViewController
//
//  Created by Cem Olcay on 10/04/15.
//  Copyright (c) 2015 Cem Olcay. All rights reserved.
//

import UIKit

class ViewControllerx: UIViewController, UIScrollViewDelegate {

    //var smallSlider: UIScrollView!
    
    @IBOutlet weak var smallSlider: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //smallSlider = UIScrollView (frame: CGRect (x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))

        
        smallSlider.backgroundColor = UIColor.redColor()

        
        smallSlider.contentSize = CGSize (width: smallSlider.frame.size.width, height: 1000)
        
        //smallSlider.delegate = self

        
        //view.addSubview(smallSlider)

        
        let gradient = CAGradientLayer()
        gradient.frame = CGRect (x: 0, y: 0, width: smallSlider.contentSize.width, height: smallSlider.contentSize.height)
        gradient.colors = [UIColor.whiteColor().CGColor, UIColor.blueColor().CGColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        smallSlider.layer.addSublayer(gradient)
        
        smallSlider.bounces = false
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        
    }

}

