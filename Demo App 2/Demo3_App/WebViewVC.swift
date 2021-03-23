//
//  WebViewVC.swift
//  Demo3_App
//
//  Created by Satwika Bhattacharjee on 23/03/21.
//  Copyright © 2021 Satwika Bhattacharjee. All rights reserved.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {

    @IBOutlet weak var webViewUrl: WKWebView!
    
    var urlWebsite = "https://www.google.co.in"
    let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayURL()
    }
    
    func displayURL(){
        let myURLString = urlWebsite
        let myURL = NSURL(string: myURLString)
        let myURLRequest = NSURLRequest(url: myURL! as URL)
        webViewUrl.load(myURLRequest as URLRequest)
    }

}
