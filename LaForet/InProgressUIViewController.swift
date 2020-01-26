//
//  InProgressUIViewController.swift
//  LaForet
//
//  Created by Jacob Lazda on 2020-01-26.
//  Copyright © 2020 Jacob Lazda. All rights reserved.
//

import UIKit

class InProgressUIViewController: UIViewController {
    
    @IBOutlet weak var treeImage: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    var timer: Timer?, count = 10, totalTime = Float(10), secondsPassed = Float(0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    @objc func update(){
        if (count > 0) {
            progressBar.progress = secondsPassed/totalTime
            secondsPassed += 1
            count -= 1
        } else {
            progressBar.progress = 1.0
            timer?.invalidate()
            treeImage.image = #imageLiteral(resourceName: "tree")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
