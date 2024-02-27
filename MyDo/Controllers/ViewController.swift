//
//  ViewController.swift
//  MyDo
//
//  Created by 정현 on 1/22/24.
//

import UIKit

class ViewController: UIViewController {
    private let tableView = UITableView()

    private lazy var button : UIButton = {
        let button = UIButton()
    
        button.translatesAutoresizingMaskIntoConstraints = false
        var config = UIButton.Configuration.borderedProminent()
        config.baseBackgroundColor = UIColor(red: 0.37, green: 0.2, blue: 0.88,alpha: 1)
        config.cornerStyle = .capsule
        config.image = UIImage(systemName: "plus")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 30, weight: .regular))
        button.configuration = config
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
       
        return button
    }()
    
    @objc func buttonTapped(_ button: UIButton) {
        let addToDoVC = addToDoViewController()
        
        addToDoVC.modalPresentationStyle = .formSheet
        self.present(addToDoVC,animated: true)
    }
  

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
        setupTableViewConstraints()
        button.mainFloatingButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    @objc func buttonTapped() {
        self.present(AddTodoViewController(),animated:  true)
        
    }
    func setupTableView() {
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.rowHeight = 100
        tableView.register(ToDoCell.self, forCellReuseIdentifier: "ToDoCell")
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
            
            button.bottomAnchor.constraint(equalTo: tableView.frameLayoutGuide.bottomAnchor, constant: -30),
            button.trailingAnchor.constraint(equalTo: tableView.frameLayoutGuide.trailingAnchor, constant: -30)
          
        ])
    }
    //코드수정
  
    
}


extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath) as! ToDoCell
        
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.separatorInsetReference = .fromAutomaticInsets
        tableView.separatorColor = UIColor(red: 0.72, green: 0.72, blue: 0.72,alpha: 1)
        
        return cell
    }
    
    
}
