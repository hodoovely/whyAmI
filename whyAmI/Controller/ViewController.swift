//
//  ViewController.swift
//  whyAmI
//
//  Created by Jinah Park on 2022/04/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var questionBrain = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        questionBrain.nextQuestion(userChoice: sender.currentTitle!)
        updateUI()
    }
    

    func updateUI() {
        questionLabel.text = questionBrain.getStoryTitle()
        choice1Button.setTitle(questionBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(questionBrain.getChoice2(), for: .normal)
    }
    
}
