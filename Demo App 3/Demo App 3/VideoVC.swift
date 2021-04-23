//
//  VideoVC.swift
//  Demo App 3
//
//  Created by Satwika Bhattacharjee on 23/04/21.
//  Copyright © 2021 Satwika Bhattacharjee. All rights reserved.
//

import UIKit
import WebKit

class VideoVC: UIViewController {

    @IBOutlet weak var videoView: WKWebView!
    
    var urlWebsite = "https://www.youtube.com/embed/Ulp1Kimblg0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.allowsInlineMediaPlayback = true
        webConfiguration.mediaTypesRequiringUserActionForPlayback = []
        
        displayURL()
    }
    
    func displayURL () {
        let myURLString = urlWebsite
        let myURL = NSURL(string: myURLString)
        let myURLRequest = NSURLRequest(url : myURL! as URL)
        videoView.load(myURLRequest as URLRequest)
    }
    
    func load(url: String) {
        let html = "<video playsinline controls width=\"\(self.videoView.frame.width)\" height=\"\(self.videoView.frame.height)\" src=\"\(url)\" autoplay=\"1\"> </video>"
        self.videoView.loadHTMLString(html, baseURL: nil)
    }

}
