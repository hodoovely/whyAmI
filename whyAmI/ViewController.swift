//
//  ViewController.swift
//  whyAmI
//
//  Created by Jinah Park on 2022/04/01.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        updateUI()
    }
    
    
    func updateUI() {
        quizLabel.text = "hello"
    }
    

}

