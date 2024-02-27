//
//  AddTodoViewController.swift
//  MyDo
//
//  Created by 정현 on 2/26/24.
//

import UIKit

class AddTodoViewController: UIViewController {
    private var buttonConfig = UIButton.Configuration.filled()
    private lazy var buttonAction = UIAction { _ in
        self.dismiss(animated: true)
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        setUpButton()
        setViewConstraints()

    }
    private lazy var saveButton = UIButton(configuration: buttonConfig, primaryAction: buttonAction)
// MARK: - mainTitle 구역
    
    let mainTitle : UILabel = {
        let label = UILabel()
        label.text = "Todo 추가"
        label.font = .systemFont(ofSize: 25,weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // MARK: - title 구역
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "제목"
        label.font = .systemFont(ofSize: 18,weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let titleTextField : UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.font = .systemFont(ofSize: 15)
        tf.layer.shadowColor = UIColor.gray.cgColor
        tf.layer.cornerRadius = 10
        tf.layer.shadowOpacity = 0.1
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
  
    lazy var titleStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel,titleTextField])
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 20.0
        return stackView
    }()
    // MARK: - memo 구역
    let memoLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18,weight: UIFont.Weight.semibold)
        label.text = "메모"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
     let memoTextView: UITextView = {
         let view = UITextView()
         view.backgroundColor = .white
         view.font = .systemFont(ofSize: 15)
         view.layer.shadowColor = UIColor.gray.cgColor
         view.layer.cornerRadius = 10
         view.layer.shadowOpacity = 0.1
         view.layer.masksToBounds = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var memoStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [memoLabel,memoTextView])
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 20.0
      
        
        return stackView
    }()
    
    private func setUpButton(){
        buttonConfig.title = "생성하기"
        buttonConfig.titlePadding = 20
        buttonConfig.buttonSize = .large
        buttonConfig.contentInsets = NSDirectionalEdgeInsets(top: 15, leading: 140, bottom: 15, trailing: 140)
        buttonConfig.baseBackgroundColor = UIColor(red: 0.37, green: 0.2, blue: 0.88,alpha: 1)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
    }

    func setViewConstraints() {
        view.addSubview(mainTitle)
        view.addSubview(titleStackView)
        view.addSubview(memoStackView)
        view.addSubview(saveButton)
        
        NSLayoutConstraint.activate([
            mainTitle.topAnchor.constraint(equalTo: view.topAnchor,constant: 20),
            mainTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleTextField.heightAnchor.constraint(equalToConstant: 40),
            titleStackView.topAnchor.constraint(equalTo: mainTitle.bottomAnchor,constant: 40),
            titleStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            titleStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            
            memoTextView.heightAnchor.constraint(equalToConstant: 120),
            memoStackView.topAnchor.constraint(equalTo: titleStackView.bottomAnchor,constant: 30),
            memoStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            memoStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            
            saveButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        
        ])
    }

}
