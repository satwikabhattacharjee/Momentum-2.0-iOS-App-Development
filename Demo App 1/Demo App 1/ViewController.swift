//
//  ViewController.swift
//  Demo App 1
//
//  Created by Satwika Bhattacharjee on 03/03/21.
//  Copyright © 2021 Satwika Bhattacharjee. All rights reserved.
//

import UIKit

var name = ""

class ViewController: UIViewController {

    
    @IBOutlet weak var textBox: UITextField!
    
    
    @IBAction func SubmitBtn(_ sender: Any) {
        if(textBox.text != ""){
            name = textBox.text!
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

