//
//  TVAnimationViewController.swift
//  Animation
//
//  Created by AmirDiafi on 6/21/22.
//

import UIKit

class TVAnimationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var people = ["Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn","Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn","Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn","Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn","Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn","Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn","Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn","Amir", "Aissa", "Ossama", "Zakazia", "Maria", "Lynn"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell") as? TVAnimationTableViewCell
        cell?.setupTVContent(username: people[indexPath.row], userImg: UIImage(systemName: "applelogo")!)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1)
        UIView.animate(withDuration: TimeInterval(0.5), animations: {
            cell.layer.transform = CATransform3DMakeScale(1, 1, 1)
        })
    }

}
