//
//  AddToDoView.swift
//  MyDo
//
//  Created by 정현 on 2/5/24.
//

import UIKit

final class AddToDoView : UIView {
    
    let height : Int = 63
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let mainTitleText : UILabel = {
       let label = UILabel()
        label.text = "Todo 추가"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    // MARK: - title 부분
    let titleText : UILabel = {
        let label = UILabel()
        label.text = "제목"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
     
    let titleTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "안녕하세요"
        tf.addConstraint(tf.heightAnchor.constraint(equalToConstant: 63))
        tf.borderStyle = .roundedRect
        tf.backgroundColor = .clear
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    // MARK: - 임시로 만들기
    let projectText : UILabel = {
        let label = UILabel()
        label.text = "프로젝트"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    let project : UITextField = {
        let tf = UITextField()
        tf.placeholder = "이건 임시용"
        tf.addConstraint(tf.heightAnchor.constraint(equalToConstant: 63))
        tf.borderStyle = .roundedRect
        tf.backgroundColor = .clear
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    // MARK: - Memo 부분
    
    let memoText : UILabel = {
        let label = UILabel()
        label.text = "메모"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    let memoTextView : UITextView = {
        let tv = UITextView()
        tv.isEditable = true
        tv.isSelectable = true
        tv.backgroundColor = .clear
        tv.layer.borderColor = UIColor.systemGray5.cgColor
        tv.layer.borderWidth = 1
        tv.layer.cornerRadius = 10
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.37, green: 0.2, blue: 0.88,alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitle("생성하기", for: .normal)
        button.tintColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var titleStackView : UIStackView = {
        let stview = UIStackView(arrangedSubviews: [titleText,titleTextField])
        stview.spacing = 10
        stview.axis = .vertical
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()
    
    private lazy var projectStackView : UIStackView = {
        let stview = UIStackView(arrangedSubviews: [projectText,project])
        stview.spacing = 10
        stview.axis = .vertical
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()
    
    private lazy var memoStackView : UIStackView = {
        let stview = UIStackView(arrangedSubviews: [memoText,memoTextView])
        stview.spacing = 10
        stview.axis = .vertical
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()
    
    
    func setConstraints() {
        self.addSubview(mainTitleText)
        self.addSubview(titleStackView)
        self.addSubview(projectStackView)
        self.addSubview(memoStackView)
        self.addSubview(saveButton)
        
        
        NSLayoutConstraint.activate([
            mainTitleText.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            mainTitleText.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            
            titleStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            titleStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            titleStackView.topAnchor.constraint(equalTo: mainTitleText.bottomAnchor, constant: 40),
            
            projectStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            projectStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            projectStackView.topAnchor.constraint(equalTo: titleStackView.bottomAnchor, constant: 25),
            
            memoStackView.heightAnchor.constraint(equalToConstant: 142),
            memoStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            memoStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            memoStackView.topAnchor.constraint(equalTo: projectStackView.bottomAnchor, constant: 25),
            
            saveButton.heightAnchor.constraint(equalToConstant: 55),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            saveButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40)
        
        ])

    }
    
}
