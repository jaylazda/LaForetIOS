//
//  ViewController.swift
//  LaForet
//
//  Created by Jacob Lazda on 2020-01-25.
//  Copyright © 2020 Jacob Lazda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var treeCollectionView: UICollectionView!
    @IBOutlet weak var activityTableView: UITableView!
    @IBOutlet weak var monthlyTrees: UILabel!
    @IBOutlet weak var allTrees: UILabel!
    @IBOutlet weak var currentStreak: UILabel!
    @IBOutlet weak var allTimeStreak: UILabel!
    @IBAction func leaderboardButtonClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "leaderboard", sender: self)
    }
    @IBAction func rewardButtonClicked(_ sender: UIButton) {
    }
    @IBAction func startActivity(_ sender: UIButton) {
        self.performSegue(withIdentifier: "startActivity", sender: self)
    }
    
    let activities: [Activity] = [
        Activity(name: "Meditation"),
        Activity(name: "Exercise"),
        Activity(name: "Volunteer"),
        Activity(name: "Learn")
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.treeCollectionView.delegate = self
        self.treeCollectionView.dataSource = self
        self.activityTableView.delegate = self
        self.activityTableView.dataSource = self
        treeCollectionView.register(UINib(nibName: "TreeImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TreeImageCollectionViewCell")
        activityTableView.register(UINib(nibName: "ActivityTableViewCell", bundle: nil), forCellReuseIdentifier: "ActivityTableViewCell")
    }
    

}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3.3, height: collectionView.frame.height/2.3)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TreeImageCollectionViewCell", for: indexPath) as! TreeImageCollectionViewCell
        cell.treeImage.image = #imageLiteral(resourceName: "tree")
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityTableViewCell", for: indexPath) as! ActivityTableViewCell
        cell.activityTitle.setTitle(activities[indexPath.row].name, for: .normal)
        return cell
    }
    
    
}
