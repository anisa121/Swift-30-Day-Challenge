//
//  ViewController.swift
//  ui
//
//  Created by Anisa on 20.02.2026.
//

import UIKit

class ViewController: UIViewController {

    private lazy var profileImageView: UIImageView = {
        let imageV = UIImageView()
        imageV.image = UIImage(systemName: "person.crop.circle.fill")
        imageV.tintColor = .systemGray
        imageV.clipsToBounds = true
        imageV.layer.cornerRadius = 40
        return imageV
    }()
    
    private lazy var nameLable: UILabel = {
        let label = UILabel()
        label.text = "Anisa"
        label.font = .boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileImageView)
        view.addSubview(nameLable)
        
        view.backgroundColor = .white
        setupUI()
        
    }
    
    func setupUI() {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLable.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            profileImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
            profileImageView.heightAnchor.constraint(equalToConstant: 120),
            
            nameLable.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
            nameLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

}

