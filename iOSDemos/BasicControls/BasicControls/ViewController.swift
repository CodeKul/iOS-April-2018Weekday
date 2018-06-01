//
//  ViewController.swift
//  BasicControls
//
//  Created by Varun on 11/04/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var abc: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var mySlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTouchUpInside(_ sender: UIButton) {
        abc.text = myTextField.text
    }

    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 0 {
            self.view.backgroundColor = UIColor.red
        } else if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.blue
        }
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        abc.text = "\(Int(sender.value))"
    }

    @IBAction func switchValueChamged(_ sender: UISwitch) {
        mySlider.isUserInteractionEnabled = sender.isOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
