//
//  ViewController.swift
//  ARCExercise
//
//  Created by Camilo Cabana on 29/06/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var secondNavigationButton: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "Second", style: .plain, target: self, action: #selector(goToSecondController))
        return button
    }()
    
    lazy var firstNavigationButton: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "First", style: .plain, target: self, action: #selector(goToFirstController))
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setNavigationBar()
    }
    
    func setNavigationBar() {
        navigationItem.title = "Example"
        navigationItem.rightBarButtonItems = [firstNavigationButton, secondNavigationButton]
    }
    
    @objc func goToSecondController() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    @objc func goToFirstController() {
        navigationController?.pushViewController(FirstViewController(), animated: true)
    }
}

