//
//  Answer.swift
//  Queeze App
//
//  Created by Yakushev Yevhen on 28.05.2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
