//
//  ViewController.swift
//  Demo3_App
//
//  Created by Satwika Bhattacharjee on 23/03/21.
//  Copyright © 2021 Satwika Bhattacharjee. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openSafari(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.google.co.in")!)
        present(vc, animated: true)
    }
    

}

