//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Varun on 01/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var myWebView : WKWebView!
    @IBOutlet var progressView : UIProgressView!
    @IBOutlet var txtURL : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        progressView.progress = 0
        myWebView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {

        if keyPath == "estimatedProgress" {
            progressView.progress = Float(myWebView.estimatedProgress)
            txtURL.text = myWebView.url?.absoluteString
            if progressView.progress == 1 {
                progressView.isHidden = true
            }
            else {
                progressView.isHidden = false
            }
        }
    }
    
    @IBAction func goButtonClicked (_ sender : UIButton) {
        
        let url = URL(string: txtURL.text!)
        let req = URLRequest(url: url!)
        myWebView.load(req)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

