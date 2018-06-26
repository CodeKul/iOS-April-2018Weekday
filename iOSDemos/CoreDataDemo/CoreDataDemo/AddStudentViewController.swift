//
//  AddStudentViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 25/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class AddStudentViewController: UIViewController {

    var appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtMarks : UITextField!
    @IBOutlet var txtRollNo : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonTouchUpInside(_ sender : UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func saveButtonTouchUpInside(_ sender : UIButton) {
        
        let stu = NSEntityDescription.insertNewObject(forEntityName: "Student", into: appdelegate.persistentContainer.viewContext) as! Student
        
        stu.name = txtName.text
        stu.marks = txtMarks.text
        stu.rollNo = txtRollNo.text
        
        appdelegate.saveContext()
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()
    }
}
