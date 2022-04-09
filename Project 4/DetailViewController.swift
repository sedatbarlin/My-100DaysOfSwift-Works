//
//  DetailViewController.swift
//  project4
//
//  Created by resedat on 4.04.2022.
//

import UIKit

class DetailViewController: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com", "stackoverflow.com", "github.com", "forums.swift.org", "youtube.com", "twitter.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return websites.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
            cell.textLabel?.text = websites[indexPath.row]
            return cell
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewController {
                vc.selectedWebsite = indexPath.row
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    
}
