//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 25/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arrStudent : [Student]?
    var appdelegate = UIApplication.shared.delegate as! AppDelegate
    @IBOutlet var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let req = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        
        arrStudent = try? (appdelegate.persistentContainer.viewContext.fetch(req) as! [Student])
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrStudent!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arrStudent![indexPath.row].name
        cell?.detailTextLabel?.text = arrStudent![indexPath.row].marks
        
        return cell!
    }
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

