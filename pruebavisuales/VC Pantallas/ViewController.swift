//
//  ViewController.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 30/08/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btnLogIn: UIButton!
    @IBOutlet weak var btnSingUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogIn.layer.cornerRadius = 10
        btnSingUp.layer.cornerRadius = 10
        self.navigationController?.navigationBar.backIndicatorImage = UIImage (named : "back-1")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named : "back-1")
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain , target: nil, action: nil)
        self.navigationItem.backBarButtonItem?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

