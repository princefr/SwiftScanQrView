//
//  ViewController.swift
//  ScanView
//
//  Created by prince jackes on 28/10/2018.
//  Copyright © 2018 prince jackes. All rights reserved.
//

import UIKit

class ViewController: ScanView, ScanViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // get the scan view results
    func ScanResult(ScanValue: String) {
        let alert = UIAlertController(title: "Scan value", message: ScanValue, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }


}

