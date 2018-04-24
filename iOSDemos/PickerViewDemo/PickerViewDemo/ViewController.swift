//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Varun on 24/04/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    private var colors : Array<String>?
    private var names : Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colors = ["Red", "Pink", "Green", "Orange", "Blue", "Gray", "Black", "White", "Yellow", "Magenta"]
        names = ["Rahul", "Sagar", "Atul", "Sachin", "Ganesh", "Raj"]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return colors!.count
        }
        return names!.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return colors![row]
        }
        return names![row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print(colors![row])
        }
        else {
            print(names![row])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

