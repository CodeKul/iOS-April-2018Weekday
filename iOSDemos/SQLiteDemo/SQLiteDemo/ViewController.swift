//
//  ViewController.swift
//  SQLiteDemo
//
//  Created by Varun on 18/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    var students : [Student]?
    @IBOutlet var myTableView : UITableView!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        students = []
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.getDatafromDbAndReloadTable()
    }
    
    func getDatafromDbAndReloadTable() {
        
        let arrData = appDelegate.selectQuery("SELECT * FROM Student")
        students?.removeAll()
        
        for data in arrData {
            let student = Student(rno: Int(data["roll_no"] as! String)!, name: data["name"] as! String, marks: Int(data["marks"] as! String)!)
            students?.append(student)
        }
        
        myTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return students!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = students![indexPath.row].name
        cell?.detailTextLabel?.text = "\(students![indexPath.row].rno)"

        return cell!
    }
}

