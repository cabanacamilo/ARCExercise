//
//  SecondViewController.swift
//  ARCExercise
//
//  Created by Camilo Cabana on 29/06/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    deinit {
        print("No retain cycle")
    }
    
    let service = SecondService()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        // propertirs Retain Cycle
        service.secondController = self
    }

}
