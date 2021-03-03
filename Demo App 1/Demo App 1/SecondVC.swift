//
//  SecondVC.swift
//  Demo App 1
//
//  Created by Satwika Bhattacharjee on 03/03/21.
//  Copyright © 2021 Satwika Bhattacharjee. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        Label.text = name
    }

}
