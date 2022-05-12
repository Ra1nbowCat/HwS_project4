//
//  FlagViewController.swift
//  Project4
//
//  Created by Илья Лехов on 02.05.2022.
//

import UIKit

class FlagViewController: UIViewController {
    
    var flagName:String?
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.darkGray.cgColor
        return imageView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        activateConstraints()

        if let imageToLoad = flagName {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    func activateConstraints() {
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 5).isActive = true
    }
}
