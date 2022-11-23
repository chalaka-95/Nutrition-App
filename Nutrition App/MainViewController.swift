//
//  MainViewController.swift
//  Nutrition App
//
//  Created by Chalaka Hasantha on 2022-11-21.
//

import UIKit

class MainViewController: UIViewController {
    
    
    let startupImage =  UIImageView()
    let titleLabel = UILabel()
    let subTitleLabel = UILabel()
    let registerButton = NAButton(color: .systemBlue, title: "Register", systemImageName: "")
    let signInButton = NAButton(color: .systemBlue, title: "\t\t\t\t\t\t\tSign In", systemImageName: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configurestartupImage()
        configureTitleLabel()
        configureSubTitle()
        configureSignInButton()
        configureRegisterButton()
    }
    
    func configurestartupImage(){
        view.addSubview(startupImage)
        startupImage.translatesAutoresizingMaskIntoConstraints = false
        startupImage.image = UIImage(named: "StartupPageImage")
        startupImage.layer.masksToBounds = true
        startupImage.layer.cornerRadius = 20
        NSLayoutConstraint.activate([
            startupImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 2),
            startupImage.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),
            startupImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            startupImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
    }
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        //titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.text = "Discover your \nDream job Here"
        titleLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: startupImage.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func configureSubTitle(){
        view.addSubview(subTitleLabel)
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.font = .systemFont(ofSize: 20, weight: .regular)
        subTitleLabel.textAlignment = .center
        subTitleLabel.text = "Explor all the most existing jobs roles \nbased on your intereste And study major"
        subTitleLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            subTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            subTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20)
        ])
    }
    
    func configureRegisterButton(){
        view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            registerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
           registerButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08)
            
        ])
    }
    
    func configureSignInButton(){
        view.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            signInButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08)
        ])
        
    }
    
}

