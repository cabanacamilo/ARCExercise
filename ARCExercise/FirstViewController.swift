//
//  FirstViewController.swift
//  ARCExercise
//
//  Created by Camilo Cabana on 29/06/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    deinit {
        print("No Retain Cycle")
    }
    
//    var refreshData: ((Data, Error) -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        FirstService.shared.fetchData { [weak self] (err) in
            if let err = err {
                print(err)
                return
            }
            self?.showAlert()
        }
        
//        refreshData = { [weak self] (data, err) in
//            self?.showAlert()
//        }
        
        //Notification center Retain Cycle
        
//        NotificationCenter.default.addObserver(forName: Notification.Name("NotificationName"), object: nil, queue: .main) { [weak self] (notification) in
//            self?.showAlert()
//        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
    }

}
