//
//  Question.swift
//  Quiz App
//
//  Created by Miranda Stewart on 9/28/22.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "Thor played what video game in Avengers: Endgame?",
                 possibleAnswers: [
                 "Red Dead Redemption II",
                 "Fortnite",
                 "Overwatch",
                 "League of Legends",
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "In what 1979 James Bond movie does the famous spy go to outer space?",
                 possibleAnswers: [
                 "Moonraker",
                 "Space Force",
                 "Moon Fall",
                 "Interstellar"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "The code in The Matrix comes from what food recipes?",
                 possibleAnswers: [
                 "Pho recipes",
                 "Italian recipes",
                 "Sushi recipes",
                 "Tajine recipes"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What is the highest-grossing movie of all time?",
                 possibleAnswers: [
                 "Titanic",
                 "Forrest Gump",
                 "Green Lantern",
                 "Avatar"
                 ],
                 correctAnswerIndex: 3)
    ]
}
