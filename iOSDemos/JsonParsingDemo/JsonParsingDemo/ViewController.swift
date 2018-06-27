//
//  ViewController.swift
//  JsonParsingDemo
//
//  Created by Varun on 27/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : [[String : Any]]?
    @IBOutlet var myTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrData = []
        let req = URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!)
        let dataTask = URLSession.shared.dataTask(with: req) { (data, response, error) in
            
            if error == nil {
                self.arrData = try? JSONSerialization.jsonObject(with: data!, options: []) as! [[String : Any]]
                DispatchQueue.main.async {
                    self.myTableView.reloadData()
                }
            }
        }
        dataTask.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = "\(arrData![indexPath.row]["id"] as! Int)"
        cell?.detailTextLabel?.text = (arrData![indexPath.row]["title"] as! String)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.dictData = arrData![indexPath.row]
        self.present(vc, animated: true, completion: nil)
    }
}
