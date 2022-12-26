//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by datas on 26/12/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let theAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        theAnswer = correctAnswer
    }
}
