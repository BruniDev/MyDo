//
//  TodoCell.swift
//  MyDo
//
//  Created by 정현 on 1/22/24.
//

import UIKit

final class TodoCell : UITableViewCell {
    
   
    // MARK: - Todo의 제목
    let todoTitleLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let projectTitleLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Todo 제목과 프로젝트 같이 묶기
    private lazy var stackView : UIStackView = {
        let stView = UIStackView(arrangedSubviews: [todoTitleLabel,projectTitleLabel])
        stView.spacing = 20
        stView.axis = .vertical
        stView.distribution = .fill
        stView.alignment = .fill
        stView.translatesAutoresizingMaskIntoConstraints = false
        
        return stView
    }()
    
    // MARK: - backView
    let backView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - 완료, 미완료 확인할 수 있음
    let isCompleted : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "완료"
        label.textColor  = UIColor(red: 0.37, green: 0.2, blue: 0.88,alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - 우측상단에 있는 설정버튼
    let settingButton : UIButton = {
        let button = UIButton(type : .custom)
        button.setTitle("...", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    func setConstraints() {
        self.contentView.addSubview(backView)
        
        NSLayoutConstraint.activate([
            backView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 25),
            backView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -25),
            backView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            backView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10)
        ])
        
        self.contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.backView.leadingAnchor, constant: 20),
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: self.backView.topAnchor, multiplier: 18)
        ])
        
        
        
        
    }
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: .default, reuseIdentifier: reuseIdentifier)
//        
//        setConstraints()
//    }
    
}
