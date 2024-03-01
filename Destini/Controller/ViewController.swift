//
//  ViewController.swift
//  Destini
//
//  Created by Kim Thanh Bui on 2/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(userChoice: userChoice)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getStoryChoice1(), for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: UIControl.State.normal)
    }
}

