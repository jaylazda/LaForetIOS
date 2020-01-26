//
//  LeaderboardViewController.swift
//  LaForet
//
//  Created by Jacob Lazda on 2020-01-26.
//  Copyright © 2020 Jacob Lazda. All rights reserved.
//

import UIKit

class LeaderboardViewController: UIViewController {

    let leaderboards: [Stats] = [
        Stats(position: 1, name: "Zavier Lambert", trees: 55, days: 9),
        Stats(position: 2, name: "Alice Diaz", trees: 53, days: 5),
        Stats(position: 3, name: "Erin Estrada", trees: 49, days: 12),
        Stats(position: 4, name: "Jalen Mack", trees: 46, days: 7),
        Stats(position: 5, name: "Phoebe Kraus", trees: 40, days: 5),
        Stats(position: 6, name: "Trevor Martin", trees: 39, days: 10),
        Stats(position: 7, name: "Jack Goodman", trees: 34, days: 8),
        Stats(position: 8, name: "Jackie Hunt", trees: 33, days: 9),
        Stats(position: 9, name: "Jordie Gallant", trees: 29, days: 4),
        Stats(position: 10, name: "Johnny Zhou", trees: 26, days: 6),
    ]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "LeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "leaderboardCell")
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

extension LeaderboardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaderboardCell", for: indexPath) as! LeaderTableViewCell
        cell.daysLabel.text = String(leaderboards[indexPath.row].days)
        cell.nameLabel.text = leaderboards[indexPath.row].name
        cell.treesLabel.text = String(leaderboards[indexPath.row].trees)
        cell.positionLabel.text = String(leaderboards[indexPath.row].position)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
}
