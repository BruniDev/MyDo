//
//  makeTodoViewController.swift
//  MyDo
//
//  Created by 정현 on 2/3/24.
//

import UIKit

final class addToDoViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    private let addToDoView = AddToDoView()
    
    override func loadView() {
        self.view = addToDoView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        view.backgroundColor = .white
    }
    func setup() {
        addToDoView.titleTextField.delegate = self
        addToDoView.memoTextView.delegate = self
        
    }
}
