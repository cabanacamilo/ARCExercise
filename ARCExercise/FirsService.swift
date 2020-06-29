//
//  FirsService.swift
//  ARCExercise
//
//  Created by Camilo Cabana on 29/06/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import UIKit

class FirstService {
    
    static let shared = FirstService()
    
    func fetchData(complition: (Error?) -> ()) {
        guard let url = URL(string: "www.example.com") else { return }
        URLSession.shared.dataTask(with: url) { (_, _, _) in
            
        }
    }
    
}
