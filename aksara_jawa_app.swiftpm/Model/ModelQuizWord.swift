//
//  File.swift
//  
//
//  Created by tiyas aria on 19/04/23.
//

import Foundation

struct QuizWordModel{
    var question : String?
    var answer : [String]
    var corect : Int?
}
var myQuizWord : [QuizWordModel] = [
//     part 1
    QuizWordModel(
        question: "Where is the Javanese script from \"Ha\" ?",
        answer: ["ꦪ", "ꦲ" , "ꦠ" , "ꦭ"],
        corect: 1
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ya\" ?",
        answer: ["ꦲ", "ꦭ" , "ꦠ" , "ꦪ"],
        corect: 3
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"La\" ?",
        answer: ["ꦪ", "ꦲ" , "ꦭ" , "ꦠ"],
        corect: 2
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ta\" ?",
        answer: ["ꦠ", "ꦲ" , "ꦪ" , "ꦭ"],
        corect: 0
    ),
]

var myQuizWord2 : [QuizWordModel] = [
//     part 1
    QuizWordModel(
        question: "Where is the Javanese script from \"Na\" ?",
        answer: ["ꦤ","ꦢ","ꦕ","ꦱ"],
        corect: 0
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Sa\" ?",
        answer: ["ꦕ","ꦢ","ꦤ","ꦱ"],
        corect: 3
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Da\" ?",
        answer: ["ꦤ","ꦱ","ꦕ","ꦢ"],
        corect: 3
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ca\" ?",
        answer: ["ꦤ","ꦢ","ꦕ","ꦱ"],
        corect: 2
    ),
]

var myQuizWord3 : [QuizWordModel] = [
//     part 1
    QuizWordModel(
        question: "Where is the Javanese script from \"Pa\" ?",
        answer: ["ꦫ","ꦮ","ꦥ","ꦒ"],
        corect: 2
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Wa\" ?",
        answer: ["ꦥ","ꦒ","ꦮ","ꦫ"],
        corect: 2
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ra\" ?",
        answer: ["ꦫ","ꦥ","ꦒ","ꦮ"],
        corect: 0
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ga\" ?",
        answer: ["ꦥ","ꦮ","ꦫ","ꦒ"],
        corect: 3
    ),
]

var myQuizWord4 : [QuizWordModel] = [
//     part 1
    QuizWordModel(
        question: "Where is the Javanese script from \"Ka\" ?",
        answer: ["ꦏ","ꦝ","ꦗ","ꦩ"],
        corect: 0
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Dha\" ?",
        answer: ["ꦩ","ꦗ","ꦝ","ꦏ"],
        corect: 2
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ja\" ?",
        answer: ["ꦩ","ꦗ","ꦏ","ꦝ"],
        corect: 1
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ma\" ?",
        answer: ["ꦏ","ꦝ","ꦗ","ꦩ"],
        corect: 3
    ),
]

var myQuizWord5 : [QuizWordModel] = [
//     part 1
    QuizWordModel(
        question: "Where is the Javanese script from \"Nya\" ?",
        answer: ["ꦛ","ꦧ","ꦚ","ꦔ"],
        corect: 2
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Ba\" ?",
        answer: ["ꦔ","ꦧ","ꦛ","ꦚ"],
        corect: 1
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Tha\" ?",
        answer: ["ꦧ","ꦚ","ꦔ","ꦛ"],
        corect: 3
    ),
    
    QuizWordModel(
        question: "Where is the Javanese script from \"Nga\" ?",
        answer: ["ꦔ","ꦛ","ꦚ","ꦧ"],
        corect: 0
    ),
]

func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}
