//
//  AddNewViewController.swift
//  SQLiteDemo
//
//  Created by Varun on 18/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class AddNewViewController: UIViewController {

    @IBOutlet var txtRollNo : UITextField!
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtMarks : UITextField!

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonClicked(_ sender : UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func saveButtonClicked(_ sender : UIButton) {
     
        if appDelegate.executeQuery("INSERT INTO Student VALUES (\(txtRollNo.text!), '\(txtName.text!)', \(txtMarks.text!))") {
            
            print("Student added")
            self.dismiss(animated: true, completion: nil)
        }
        else {
            print("Error while adding student")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
