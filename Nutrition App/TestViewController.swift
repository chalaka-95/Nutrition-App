//
//  TestViewController.swift
//  Nutrition App
//
//  Created by Chalaka Hasantha on 2022-11-23.
//

import UIKit

class TestViewController: UIViewController {
    
    let tableView : UITableView  = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.layer.backgroundColor = UIColor.systemBackground.cgColor
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        //table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifire)
        return table
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        view.addSubview(tableView)
//        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
//        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
//        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        tableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        tableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension TestViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "Cell ID"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
