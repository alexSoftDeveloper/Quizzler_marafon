//
//  Question.swift
//  Quizzler_marafon
//
//  Created by Александр Гуркин on 26.09.2024.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
