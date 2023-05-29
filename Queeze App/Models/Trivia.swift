//
//  Trivia.swift
//  Queeze App
//
//  Created by Yakushev Yevhen on 29.05.2023.
//

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID {
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        var formattedQuestion: AttributedString {
            do {
               return try AttributedString(markdown: question)
            } catch {
                print ("error setting formattedQuestion: \(error)")
                return ""
            }
        }
        
        var answers: [Answer] {
            do {
                let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
            } catch {
                print("error: \(error)")
                return []
            }
        }
    }
}


