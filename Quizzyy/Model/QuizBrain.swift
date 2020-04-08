//
//  QuizBrain.swift
//  Quizzyy
//
//  Created by Yewon Seo on 2020/04/08.
//  Copyright © 2020 Yewon Seo. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var quizNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Hello, am I beautiful and smart? :)", a: "True"),
        Question(q: "Lightening never strikes in the same place twice.", a: "False"),
        Question(q: "If you cry in space, the tears just stick to your face.", a: "True"),
        Question(q: "Close to one-quarter of bones in a human body are in the feet.", a: "True"),
        Question(q: "Humans can distinguish between over a trillion different smells.", a: "True"),
        Question(q: "Adults have fewer bones than babies do.", a: "True"),
        Question(q: "Napoleon Bonaparte was below average height for his time.", a: "False"),
        Question(q: "Goldfish only has a memory of three seconds.", a: "False"),
        Question(q: "There are more cells of bacteria in your body than your own cells.", a: "True"),
        Question(q: "Birds are dinosaurs.", a: "True"),
        Question(q: "Humans can't breathe and swallow at the same time.", a: "True"),
        Question(q: "The five Olympic rings signify the five sports events at the first Olympics in ancient Greece.", a: "False"),
        Question(q: "J.K. Rowling is the first author to become a billionaire.", a: "True"),
        Question(q: "Denmark has the oldest and most continuously used national flag.", a: "True"),
        Question(q: "Nutella was invented during World War 2.", a: "False"),
        Question(q: "8 out of 10 of the world's highest montains are located in Nepal.", a: "True"),
        Question(q: "Venus is the first planet to be discovereed with a telescope.", a: "False"),
        Question(q: "The hottest part of Earth (its core) is solid.", a: "True"),
        Question(q: "Sandwich is named after a person.", a: "True"),
        Question(q: "Baby koalas are called joeys.", a: "True")
    ]
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[quizNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[quizNumber].quizText
    }
    
    func getProgress() -> Float {
        let progress = Float(quizNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if quizNumber + 1 < quiz.count {
             quizNumber += 1
         } else {
             quizNumber = 0
             score = 0
         }
    }
    
    func getScore() -> Int {
        return score
    }
    
    
    
    // immutability
    // cannot change. destroy the old copy and create a new copy.
    // let = constant. var = let
    // struct -> you can mutate outside the stucture itself.
    // if you want to chage it inside the struct, you need to put a keyword 'mutating'
    // mutating method can change the state of the structure
    
}
