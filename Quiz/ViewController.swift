//
//  ViewController.swift
//  Quiz
//
//  Created by Joachim Goennheimer on 03.03.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
        
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 3x4?",
        "What grade will I try to get in the Swift course?",
        "Is this a question?"
    ]
    
    let answers: [String] = [
        "12",
        "1.0",
        "Yes"
    ]
    
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "No Question yet"
        answerLabel.text = "No Question --> no answer"
        // Do any additional setup after loading the view.
    }
    
    func animateLabelTransitions () {
        let animationClosure = { () -> Void in
            self.questionLabel.alpha = 1
        }
        
        UIView.animate(withDuration: 0.5, animations: animationClosure)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        questionLabel.alpha = 0
    }

    @IBAction func showNextQuestion(_ sender: Any) {
        
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        }
        else {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        
        animateLabelTransitions()
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }
    
}

