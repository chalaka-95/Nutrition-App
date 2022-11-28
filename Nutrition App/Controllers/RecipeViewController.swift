//
//  RecipeViewController.swift
//  Nutrition App
//
//  Created by Chalaka Hasantha on 2022-11-24.
//

import UIKit

class RecipeViewController: UIViewController {
    
    let viewHolder = UIStackView()
    let searchImage = UIImageView()
    let filterImage = UIImageView()
    let titleLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configureSearchImage()
        configureFilterImage()
        configureViewHolder()
        configureTitleLabel()
    }
    
    func configureViewHolder(){
        view.addSubview(viewHolder)
        //viewHolder.spacing =
        viewHolder.axis = .horizontal
        viewHolder.alignment = .leading
        viewHolder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            viewHolder.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            viewHolder.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
        ])
    }
    
    func configureSearchImage(){
        viewHolder.insertArrangedSubview(searchImage, at: 0)
        //view.addSubview(searchImage)
        searchImage.image = UIImage(systemName: "magnifyingglass")
        searchImage.layer.masksToBounds = true
        searchImage.contentMode = .scaleAspectFill
        
        searchImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        searchImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        //        searchImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        //        searchImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        searchImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureFilterImage(){
        viewHolder.insertArrangedSubview(filterImage, at: 1)
        //view.addSubview(filterImage)
        filterImage.image = UIImage(systemName: "magnifyingglass") //slider.horizontal.3"
        filterImage.layer.masksToBounds = true
        filterImage.contentMode = .scaleAspectFill
        filterImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        filterImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        //        filterImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        //        filterImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        //filterImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        filterImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.text = "Recipes"
        titleLabel.textAlignment = .left
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: viewHolder.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
}
