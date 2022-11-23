//
//  DashboardViewController.swift
//  Nutrition App
//
//  Created by Chalaka Hasantha on 2022-11-23.
//

import UIKit

class DashboardViewController: UIViewController {
    
    struct Menu {
        let title: String
        let imageName: String
    }

let data = [
    Menu(title: "Corporate APP", imageName: "building.2"),
    Menu(title: "Security Settings", imageName: "gearshape"),
    Menu(title: "Online Shopping", imageName: "cart"),
    Menu(title: "Groceris", imageName: "building.columns"),
    Menu(title: "Utitlities", imageName: "wrench.and.screwdriver"),
    Menu(title: "Thumb Scanner", imageName: "touchid")
]
    
    let viewHolder = UIStackView()
    let profileImage = UIImageView()
    let userNameLable = UILabel()
    let jobTitleLabel = UILabel()
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configureProfileImage()
        configureNameLable()
        configureJobLabel()
        configureUIView()
        configureTableView()
    }
    
    func configureUIView(){
        view.addSubview(viewHolder)
        viewHolder.axis = .vertical
        viewHolder.spacing = 20
        viewHolder.alignment = .leading
        viewHolder.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewHolder.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            viewHolder.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            viewHolder.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func configureProfileImage(){
        viewHolder.insertArrangedSubview(profileImage, at: 0)
        profileImage.image = UIImage(named: "ProfileImage")
        profileImage.layer.masksToBounds = true
        profileImage.contentMode = .scaleAspectFill
        profileImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        profileImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureNameLable(){
        viewHolder.insertArrangedSubview(userNameLable, at: 1)
        userNameLable.text = "Ghulam"
        userNameLable.textAlignment = .left
        userNameLable.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        userNameLable.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureJobLabel(){
        viewHolder.insertArrangedSubview(jobTitleLabel, at: 2)
        jobTitleLabel.text = "UI UX Designer"
        jobTitleLabel.textAlignment = .left
        jobTitleLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        jobTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureTableView(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.layer.backgroundColor = UIColor.systemBackground.cgColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: viewHolder.bottomAnchor, constant: 40),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            tableView.heightAnchor.constraint(equalTo: view.heightAnchor),
            tableView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
    
}

extension DashboardViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let model = data[indexPath.row]
                
                var listContentConfiguration = UIListContentConfiguration.cell()
                listContentConfiguration.text = model.title
                listContentConfiguration.image = UIImage(systemName: model.imageName)
                
                cell.contentConfiguration = listContentConfiguration
                return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

