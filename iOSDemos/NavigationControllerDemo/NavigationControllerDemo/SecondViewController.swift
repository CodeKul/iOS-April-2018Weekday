//
//  SecondViewController.swift
//  NavigationControllerDemo
//
//  Created by Varun on 05/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender : UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
