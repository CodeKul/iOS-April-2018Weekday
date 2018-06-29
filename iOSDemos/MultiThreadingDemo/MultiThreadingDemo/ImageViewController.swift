//
//  ImageViewController.swift
//  MultiThreadingDemo
//
//  Created by Varun on 28/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageView : UIImageView!
    @IBOutlet var loader : UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loader.startAnimating()

        DispatchQueue.global().async {
            let image = UIImage(data: try! Data(contentsOf: URL(string: "https://orig00.deviantart.net/264e/f/2015/074/6/e/avengers_age_of_ultron___iron_man_by_steeven7620-d8lumo5.png")!))!
            
            DispatchQueue.main.async {
                self.imageView.image = image
                self.loader.stopAnimating()
            }
        }
    }
}
