//
//  ModelQuiz.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 13/04/23.
//

import Foundation

struct QuizModel : Identifiable{
    let id = UUID()
    let word : String
    let answer : [String]
    let image : String
    let correctAnswer : Int
   
}

var myQuiz : [QuizModel] = [
    QuizModel(
        word: "Se Go",
        answer: ["ꦱꦼ ꦒꦺꦴ", "ꦕꦼ ꦒꦺꦴ", "ꦢꦼ ꦒꦺꦴ" ,"ꦩꦼ ꦒꦺꦴ" ],
        image: "nasi",
        correctAnswer: 0
        
    ),
    
    QuizModel(
        word: "Sa Pi",
        answer: ["ꦥꦶ ꦥꦶ","ꦫ ꦥꦶ" , "ꦱ ꦥꦶ" , "ꦥꦶ ꦠꦸ"],
        image: "sapi",
        correctAnswer: 2
       
    ),
    
    QuizModel(
        word: "Bu Ku",
        answer: ["ꦏꦸ ꦠꦸ", "ꦧꦸ ꦏꦸ" , "ꦠꦸ ꦏꦸ", "ꦧ ꦠꦸ"],
        image: "Buku",
        correctAnswer: 1
        
    ),
    
    QuizModel(
        word: "Ka Yu",
        answer: ["ꦥ ꦪꦸ", "ꦫ ꦪꦸ", "ꦭ ꦪꦸ" ,"ꦏ ꦪꦸ" ],
        image: "kayu",
        correctAnswer: 3
        
    ),
    
    QuizModel(
        word: "Ro Ti",
        answer: ["ꦫꦺꦴ ꦠꦶ" ,"ꦩꦺꦴ ꦠꦶ" ,"ꦥ ꦠꦶ" , "ꦗꦺꦴ ꦠꦶ" ],
        image: "roti",
        correctAnswer: 0
        
    ),
    
    QuizModel(
        word: "Te Lu",
        answer: ["ꦩꦼ ꦭꦸ","ꦠꦼ ꦭꦸ" ,"ꦥꦼ ꦭꦸ" ,"ꦪꦼ ꦭꦸ" ],
        image: "telu",
        correctAnswer: 1
        
    ),
    
    QuizModel(
        word: "Si Ji",
        answer: ["ꦕꦶ ꦗꦶ","ꦩꦶ ꦗꦶ","ꦥꦶ ꦗꦶ" , "ꦱꦶ ꦗꦶ" ],
        image: "siji",
        correctAnswer: 3
       
    ),
    
    QuizModel(
        word: "Pa Ku",
        answer: ["ꦧꦸ ꦏꦸ","ꦭ ꦏꦸ","ꦥ ꦏꦸ","ꦮ ꦏꦸ" ],
        image: "paku",
        correctAnswer: 2
        
    ),
    
    QuizModel(
        word: "Su Su",
        answer: ["ꦢꦸ ꦢꦸ","ꦕꦸ ꦕꦸ","ꦱꦸ ꦱꦸ","ꦤꦸ ꦤꦸ" ],
        image: "susu",
        correctAnswer: 2
        
    ),
    
    QuizModel(
        word: "Me Jo",
        answer: ["ꦥꦼ ꦗꦺꦴ","ꦧꦼ ꦗꦺꦴ" ,"ꦉ ꦗꦺꦴ", "ꦩꦼ ꦗꦺꦴ" ],
        image: "meja",
        correctAnswer: 3
       
    ),
]

func saveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}



