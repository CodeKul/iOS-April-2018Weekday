//
//  ViewController.swift
//  CustomCellDemo
//
//  Created by Varun on 22/05/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var players : [Player]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let p1 = Player(name: "Sachin", team: "MI", age: 40, imageName: "Sachin.jpg")
        let p2 = Player(name: "Dhoni", team: "CSK", age: 35, imageName: "Dhoni.jpg")
        let p3 = Player(name: "Virat", team: "RCB", age: 32, imageName: "Virat.jpg")
        let p4 = Player(name: "Yuvraj", team: "KXIP", age: 36, imageName: "Yuvraj.jpg")
        players = [p1, p2, p3, p4]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players!.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 127
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell") as! PlayerTableViewCell
        
        cell.setData(player: players![indexPath.row])
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

