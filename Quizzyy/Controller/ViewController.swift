//
//  ViewController.swift
//  Quizzyy
//
//  Created by Yewon Seo on 2020/04/08.
//  Copyright © 2020 Yewon Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!

    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make the buttons prettier
        trueButton.backgroundColor = UIColor.clear
        trueButton.layer.cornerRadius = trueButton.frame.height / 2
        trueButton.layer.borderWidth = 2
        trueButton.layer.borderColor = UIColor.white.cgColor
        trueButton.setTitleColor(UIColor.white, for: .normal)
        falseButton.backgroundColor = UIColor.clear
        falseButton.layer.cornerRadius = falseButton.frame.height / 2
        falseButton.layer.borderWidth = 2
        falseButton.layer.borderColor = UIColor.white.cgColor
        falseButton.setTitleColor(UIColor.white, for: .normal)
        
        // load the question
        updateQuiz()
        
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let rightAnswer = quizBrain.checkAnswer(userAnswer)
        
        if rightAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        // give some time to show the color
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuiz), userInfo: nil, repeats: false)
  
    }
    
    @objc func updateQuiz() {
        
        quizLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        
        scoreLabel.text = "Score: \(quizBrain.getScore()) / 20 "
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
        
    
}

