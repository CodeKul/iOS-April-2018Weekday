//
//  ViewController.swift
//  BasicControlsByCode
//
//  Created by Varun on 12/04/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel : UILabel?
    var myTextField : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel = UILabel(frame: CGRect(x: 16, y: 20, width: 288, height: 50))
        myLabel?.text = "Rahul"
        myLabel?.textColor = UIColor.green
        myLabel?.textAlignment = .center
        myLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.view.addSubview(myLabel!)
        
        let myButton = UIButton(frame: CGRect(x: 120, y: (myLabel?.frame.origin.y)! + (myLabel?.frame.height)! + 10, width: 80, height: 40))
        myButton.setTitle("Okay", for: .normal)
        myButton.setTitle("GO", for: .highlighted)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.addTarget(self, action: #selector(buttonTouchupInside(_:)), for: .touchUpInside)
        
        self.view.addSubview(myButton)
     
        myTextField = UITextField(frame: CGRect(x: 16, y: myButton.frame.origin.y + myButton.frame.height + 10, width: 288, height: 30))
        myTextField?.placeholder = "Name"
        self.view.addSubview(myTextField!)
        
    }

    @objc func buttonTouchupInside(_ sender : UIButton) {
        myLabel?.text = myTextField?.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

