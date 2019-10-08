//
//  ViewController.swift
//  ProgressBar
//
//  Created by LAM Fung on 28/9/2019.
//  Copyright © 2019 LAM Fung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goTestPage(_ sender: Any) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "progressbar") {
            present(controller, animated: true, completion: nil)
        }
    }
    
}

