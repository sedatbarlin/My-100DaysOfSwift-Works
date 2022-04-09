//
//  DetailViewController.swift
//  Challenge 1
//
//  Created by resedat on 1.04.2022.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        title = "\(selectedImage!.uppercased())"
        
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
            imageView?.layer.borderWidth = 3
            imageView?.layer.borderColor = UIColor.black.cgColor
            title = imageToLoad.uppercased()
        }
    }
    
    @objc func shareTapped() {
            guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else
                {
                print("No image found")
                return
            }
            let vc = UIActivityViewController(activityItems: [image, selectedImage!], applicationActivities: [])
            vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
            present(vc, animated: true)
        }
    

}
