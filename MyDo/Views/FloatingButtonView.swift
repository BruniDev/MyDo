//
//  FloatingButton.swift
//  MyDo
//
//  Created by 정현 on 1/24/24.
//

import UIKit

final class FloatingButtonView: UIView {
    let mainFloatingButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        var config = UIButton.Configuration.borderedProminent()
        config.baseBackgroundColor = UIColor(red: 0.37, green: 0.2, blue: 0.88,alpha: 1)
        config.cornerStyle = .capsule
        config.image = UIImage(systemName: "plus")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 30, weight: .regular))
        button.configuration = config
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        
        return button
    }()
    let addProjectButton: UIButton = {
            let button = UIButton()
            var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = UIColor(red: 0.37, green: 0.2, blue: 0.88,alpha: 1)
            config.cornerStyle = .capsule
            config.image = UIImage(systemName: "folder.badge.plus")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 30, weight: .regular))
            button.configuration = config
            button.layer.shadowRadius = 10
            button.layer.shadowOpacity = 0.3
            button.alpha = 0.0
            return button
        }()
    let addTodoButton: UIButton = {
            let button = UIButton()
            var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = UIColor(red: 0.37, green: 0.2, blue: 0.88,alpha: 1)
            config.cornerStyle = .capsule
            config.image = UIImage(systemName: "calendar.badge.plus")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 30, weight: .regular))
            button.configuration = config
            button.layer.shadowRadius = 10
            button.layer.shadowOpacity = 0.3
            button.alpha = 0.0
            return button
        }()
}
