//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Varun on 13/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbl : UILabel!
    @IBOutlet var txt : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setDataToLabel()
    }
    
    @IBAction func okayButtonTouchUpInside(_ sender : UIButton) {
        
        let ud = UserDefaults.standard
        ud.setValue(txt.text, forKey: "myData")
        ud.synchronize()

        self.setDataToLabel()
    }

    func setDataToLabel() {
        
        let ud = UserDefaults.standard
        
        if let data = ud.value(forKey: "myData") {
            lbl.text = (data as! String)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

