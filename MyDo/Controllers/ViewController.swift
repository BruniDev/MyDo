//
//  ViewController.swift
//  MyDo
//
//  Created by 정현 on 1/22/24.
//

import UIKit

class ViewController: UIViewController {
    private let tableView = UITableView()
    private let button = FloatingButtonView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
        setupTableViewConstraints()
        // Do any additional setup after loading the view.
    }

    func setupTableView() {
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.rowHeight = 100
        tableView.register(TodoCell.self, forCellReuseIdentifier: "TodoCell")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.reloadData()
    }
    
    
    func setupTableViewConstraints() {
        view.addSubview(tableView)
        tableView.addSubview(button.mainFloatingButton)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            button.mainFloatingButton.bottomAnchor.constraint(equalTo: tableView.frameLayoutGuide.bottomAnchor, constant: -30),
            button.mainFloatingButton.trailingAnchor.constraint(equalTo: tableView.frameLayoutGuide.trailingAnchor, constant: -30)
          
        ])
    }
    //코드수정
  
    
}


extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as! TodoCell
        
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.separatorInsetReference = .fromAutomaticInsets
        tableView.separatorColor = UIColor(red: 0.72, green: 0.72, blue: 0.72,alpha: 1)
        
        return cell
    }
    
    
}
