//
//  ViewController.swift
//  Challenge 1
//
//  Created by resedat on 1.04.2022.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Flag Display Menu"
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
                if item.hasSuffix(".png") {
                    var text = item
                    let range = text.index(
                        text.endIndex, offsetBy: -7)..<text.endIndex
                    text.removeSubrange(range)
                    pictures.append(text)
                    pictures.sort()
                }
        }
        print(pictures)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.imageView?.image = UIImage(named: "\(pictures[indexPath.row])")
        cell.imageView?.layer.borderWidth = 1
        cell.imageView?.layer.borderColor = UIColor.black.cgColor
        cell.textLabel?.text = pictures[indexPath.row].uppercased()
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
               vc.selectedImage = pictures[indexPath.row]
               navigationController?.pushViewController(vc, animated: true)
        }
    }
}
