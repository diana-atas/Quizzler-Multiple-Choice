//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//


// DA psuedo-code
//  replace Question Text with actual question
//  check if user's answer is correct
//  go to the next question
//  add score

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionLabel.text = quizBrain.getQuestion()
        let choices = quizBrain.getChoices()
        answerA.setTitle(choices[0], for: .normal)
        answerB.setTitle(choices[1], for: .normal)
        answerC.setTitle(choices[2], for: .normal)
        
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        print("userAnswer: \(userAnswer)")
    }
    

}

