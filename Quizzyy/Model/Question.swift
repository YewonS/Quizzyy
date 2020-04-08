//
//  Question.swift
//  Quizzyy
//
//  Created by Yewon Seo on 2020/04/08.
//  Copyright © 2020 Yewon Seo. All rights reserved.
//

import Foundation

struct Question {
    
    let quizText:String
    let answer:String
    
    init(q: String, a: String) {
        self.quizText = q
        self.answer = a
    }
    
}
