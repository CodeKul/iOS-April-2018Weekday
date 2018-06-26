//
//  ViewController.swift
//  XMLParsingDemo
//
//  Created by Varun on 26/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate, UITableViewDelegate, UITableViewDataSource {

    var parser : XMLParser?
    var strData : String?
    var plant : [String: String]?
    var catalogs : [[String: String]]?
    
    @IBOutlet var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parser = XMLParser(contentsOf: URL(string: "http://www.chilkatsoft.com/xml-samples/plants.xml")!)
        parser?.delegate = self
        parser?.parse()
    }

    func parserDidStartDocument(_ parser: XMLParser) {
        print("parserDidStartDocument")
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "CATALOG" {
            catalogs = []
        }
        else if elementName == "PLANT" {
            plant = [:]
        }
        else {
            strData = ""
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        strData?.append(string)
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "CATALOG" {
            DispatchQueue.main.async {
                self.myTableView.reloadData()
            }
        }
        else if elementName == "PLANT" {
            catalogs?.append(plant!)
        }
        else {
            plant![elementName] = strData!
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catalogs!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = catalogs![indexPath.row]["BOTANICAL"]
        cell?.detailTextLabel?.text = catalogs![indexPath.row]["PRICE"]
        
        return cell!
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("parserDidEndDocument")
    }
}

