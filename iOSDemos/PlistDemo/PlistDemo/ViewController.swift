//
//  ViewController.swift
//  PlistDemo
//
//  Created by Varun on 15/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/myFile.plist"
        
        print(path)

//        ********** Write dictionary **********
        
//        let dict = NSDictionary(dictionary: ["Name": "Rahul", "Address": "Pune", "Phone": "1234567890"])
//
//        dict.write(toFile: path, atomically: true)
        
        
//        ********** Write Array **********
        
//        let arr = NSArray(array: ["Red", "Green", "Blue", "Gray", "Brown", "Black", "White"])
//        arr.write(toFile: path, atomically: true)
        
        
//        ********** Read Dictionary **********
        
        let dict = NSDictionary(contentsOfFile: path)
        print(dict!)
        
        
//        ********** Read Array **********
        
//        let arr = NSArray(contentsOfFile: path)
//        print(arr!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

