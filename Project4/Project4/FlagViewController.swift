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
        //imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        //imageView.layer.borderWidth = 1
        //imageView.layer.borderColor = UIColor.darkGray.cgColor
        return imageView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        if let imageToLoad = flagName {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
}
