//
//  ViewController.swift
//  AutoLayoutDemo4
//
//  Created by Varun on 11/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuViewLeadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func menuButtonTouchUpInside (_ sender : UIButton) {
        
        if menuViewLeadingConstraint.constant == 0 {
            menuViewLeadingConstraint.constant = -200
        }
        else {
            menuViewLeadingConstraint.constant = 0
        }
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func edgePanGesture (_ sender : UIScreenEdgePanGestureRecognizer) {
        menuViewLeadingConstraint.constant = 0
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func swipeGesture (_ sender : UISwipeGestureRecognizer) {
        menuViewLeadingConstraint.constant = -200
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

