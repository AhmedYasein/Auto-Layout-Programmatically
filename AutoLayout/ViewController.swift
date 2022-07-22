//
//  ViewController.swift
//  AutoLayout
//
//  Created by Ahmed Yasein on 7/21/22.
//  Copyright © 2022 Ahmed Yasein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var mainView: LoginView = {
        let view = LoginView(frame: self.view.frame)
        view.backgroundColor = .white
        return view
    }()
    
    
    override func loadView() {
        super.loadView()
        view = mainView
         
    }
    override func viewDidLoad() {
        super.viewDidLoad()
  

        
        
 
        
        
      
        
        
 
        
  
  
    }


       
    
}

