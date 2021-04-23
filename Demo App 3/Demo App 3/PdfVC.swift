//
//  PdfVC.swift
//  Demo App 3
//
//  Created by Satwika Bhattacharjee on 23/04/21.
//  Copyright © 2021 Satwika Bhattacharjee. All rights reserved.
//

import UIKit
import PDFKit

class PdfVC: UIViewController {

    @IBOutlet weak var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "membership 2019", ofType: "pdf"){
            let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url:url) {
                pdfView.autoScales = true
                pdfView.displayMode = .singlePageContinuous
                pdfView.displayDirection = .vertical
                pdfView.document = pdfDocument
                pdfView.backgroundColor = .white
            }
        }

    }

}

