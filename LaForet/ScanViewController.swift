//
//  ScanViewController.swift
//  LaForet
//
//  Created by Jacob Lazda on 2020-01-26.
//  Copyright © 2020 Jacob Lazda. All rights reserved.
//

import UIKit

class ScanViewController: UIViewController {
    
    @IBAction func scanButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "inProgress", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}
