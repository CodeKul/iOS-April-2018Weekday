//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Varun on 21/05/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : [String]?
    var arrNames : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        arrData = ["Red", "Green", "Blue", "Yellow", "Magenta", "Cyan", "Pink", "Gray", "Orange", "Purple", "Voilet", "Black", "Golden", "Silver", "White"]
        arrNames = ["Rahul", "Tushar", "Sagar", "Sachin", "Ganesh", "Atul", "Varun", "John", "Nikhil", "Aniruddha"]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return arrData!.count
        }
        return arrNames!.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Shades"
        }
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if indexPath.section == 0 {
            cell?.textLabel?.text = arrData![indexPath.row]
        }
        else {
            cell?.textLabel?.text = arrNames![indexPath.row]
        }
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

