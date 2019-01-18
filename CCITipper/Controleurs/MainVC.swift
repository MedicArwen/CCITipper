//
//  MainVC.swift
//  CCITipper
//
//  Created by etudiant-16 on 17/01/2019.
//  Copyright © 2019 Networked Hells. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startButton.layer.borderWidth = 2.0
        startButton.layer.borderColor = #colorLiteral(red: 0.05959196389, green: 0.2646044195, blue: 0.4736116529, alpha: 1)
        startButton.layer.cornerRadius = 3
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = true
    }

}

