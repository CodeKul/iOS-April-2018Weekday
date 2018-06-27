//
//  DetailViewController.swift
//  JsonParsingDemo
//
//  Created by Varun on 27/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var userIdLbl : UILabel!
    @IBOutlet var idLbl : UILabel!
    @IBOutlet var titleLbl : UILabel!
    @IBOutlet var bodyLbl : UILabel!

    var dictData : [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userIdLbl.text = "\(dictData!["userId"] as! Int)"
        idLbl.text = "\(dictData!["id"] as! Int)"
        titleLbl.text = (dictData!["title"] as! String)
        bodyLbl.text = (dictData!["body"] as! String)
    }

    @IBAction func closeButtonTouchUpInside(_ sender : UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
