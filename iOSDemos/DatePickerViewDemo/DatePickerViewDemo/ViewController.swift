//
//  ViewController.swift
//  DatePickerViewDemo
//
//  Created by Varun on 16/04/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var datePicker : UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker = UIDatePicker(frame: CGRect(x: 0, y: 184, width: 320, height: 200))
        datePicker?.datePickerMode = .dateAndTime
        datePicker?.date = Date()
        datePicker?.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
        self.view.addSubview(datePicker!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func datePickerValueChanged(_ sender : UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy hh:mm:ss a"
        myLabel.text = dateFormatter.string(from: sender.date)
    }

//    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "dd/MM/yyyy hh:mm:ss a"
//        myLabel.text = dateFormatter.string(from: sender.date)
//    }
}

