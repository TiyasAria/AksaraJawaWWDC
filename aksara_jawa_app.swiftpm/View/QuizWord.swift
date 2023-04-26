//
//  SwiftUIView.swift
//  
//
//  Created by tiyas aria on 19/04/23.
//

import SwiftUI

struct QuizWord : View {
    //number of question
    var title : String
    @State var i : Int = 0
    
    //var for the score
    @State var score = 0
    @State private var isPresent = false
    @State private var isCorrectAnswer = false
    
    var body: some View {
        ZStack{
            Color("lightBrownTwo")
            
            VStack(alignment: .leading) {
                Text("Hello, Let's play ")
                    .font(.system(size: 48))
                    .fontWeight(.semibold)
                    .padding(.top , 25)
                    .padding(.bottom, 10)
                
                
                Text("Choose the correct answer by selecting from one of the options")
                    .font(.system(size: 32))
                    .fontWeight(.regular)
                    .padding(.bottom, 20)
                
//                 aksara pertama
                if (self.title  == "ꦲ ꦭ ꦠ ꦪ"){
                    //if i < of questions --> play question
                    if(self.i < myQuizWord.count){
                        
                        //text of the question
                        HStack {
                            Spacer()
                            Text(myQuizWord[self.i].question! )
                                .font(.system(size: 48))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("darkBrown"))
                                .padding(.bottom, 40)
                            .lineLimit(2)
                            
                            Spacer()
                        }
                        
                        //answer 1
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 0, answer:myQuizWord )
                            },
                            index: 0,
                            answer: myQuizWord
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 1, answer:myQuizWord )
                            },
                            index: 1,
                            answer: myQuizWord
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 2, answer:myQuizWord )
                            },
                            index: 2,
                            answer: myQuizWord
                        )
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 3, answer:myQuizWord )
                            },
                            index: 3,
                            answer: myQuizWord
                        )
                        
                        Spacer()
                        
                    }
                    
                    else {
                        FinalQuizScreen(score: self.score)
                    }
                }
//                aksara kedua
                else if (self.title  == "ꦤ ꦢ ꦕ ꦱ"){
                    if(self.i < myQuizWord2.count){
                        
                        //text of the question
                        HStack {
                            Spacer()
                            Text(myQuizWord2[self.i].question! )
                                .font(.system(size: 48))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("darkBrown"))
                                .padding(.bottom, 40)
                            .lineLimit(2)
                            
                            Spacer()
                        }
                        
                        //answer 1
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 0, answer:myQuizWord2 )
                            },
                            index: 0,
                            answer: myQuizWord2
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 1, answer:myQuizWord2 )
                            },
                            index: 1,
                            answer: myQuizWord2
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 2, answer:myQuizWord2)
                            },
                            index: 2,
                            answer: myQuizWord2
                        )
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 3,answer:myQuizWord2)
                            },
                            index: 3,
                            answer: myQuizWord2
                        )
                
                        Spacer()
                    
                    }
                    
                    else {
                        FinalQuizScreen(score: self.score)
                    }
                }
//                 aksara ke 3
                else if (self.title  == "ꦥ ꦮ ꦫ ꦒ"){
                    if(self.i < myQuizWord3.count){
                        
                        //text of the question
                        HStack {
                            Spacer()
                            Text(myQuizWord3[self.i].question! )
                                .font(.system(size: 48))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("darkBrown"))
                                .padding(.bottom, 40)
                            .lineLimit(2)
                            
                            Spacer()
                        }
                        
                        //answer 1
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 0, answer:myQuizWord3 )
                            },
                            index: 0,
                            answer: myQuizWord3
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 1, answer:myQuizWord3 )
                            },
                            index: 1,
                            answer: myQuizWord3
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 2, answer:myQuizWord3)
                            },
                            index: 2,
                            answer: myQuizWord3
                        )
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 3,answer:myQuizWord3)
                            },
                            index: 3,
                            answer: myQuizWord3
                        )
                
                        Spacer()
                    
                    }
                    
                    else {
                        FinalQuizScreen(score: self.score)
                    }
                }
//                 aksara 4
                else if (self.title  == "ꦏ ꦝ ꦗ ꦩ"){
                    if(self.i < myQuizWord4.count){
                        
                        //text of the question
                        HStack {
                            Spacer()
                            Text(myQuizWord4[self.i].question! )
                                .font(.system(size: 48))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("darkBrown"))
                                .padding(.bottom, 40)
                            .lineLimit(2)
                            
                            Spacer()
                        }
                        
                        //answer 1
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 0, answer:myQuizWord4)
                            },
                            index: 0,
                            answer: myQuizWord4
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 1, answer:myQuizWord4 )
                            },
                            index: 1,
                            answer: myQuizWord4
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 2, answer:myQuizWord4)
                            },
                            index: 2,
                            answer: myQuizWord4
                        )
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 3,answer:myQuizWord4)
                            },
                            index: 3,
                            answer: myQuizWord4
                        )
                
                        Spacer()
                    
                    }
                    
                    else {
                        FinalQuizScreen(score: self.score)
                    }
                }
//                 quiz 5
                else if (self.title  == "ꦚ ꦧ ꦛ ꦔ"){
                    if(self.i < myQuizWord5.count){
                        
                        //text of the question
                        HStack {
                            Spacer()
                            Text(myQuizWord5[self.i].question! )
                                .font(.system(size: 48))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("darkBrown"))
                                .padding(.bottom, 40)
                            .lineLimit(2)
                            
                            Spacer()
                        }
                        
                        //answer 1
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 0, answer:myQuizWord5 )
                            },
                            index: 0,
                            answer: myQuizWord5
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 1, answer:myQuizWord5 )
                            },
                            index: 1,
                            answer: myQuizWord5
                        )
                        
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 2, answer:myQuizWord5)
                            },
                            index: 2,
                            answer: myQuizWord5
                        )
                        ButtonOptionWord(
                            question: $i,
                            isPresent: $isPresent,
                            isCorrectAnswer: $isCorrectAnswer, voidCheckAnswer: {
                                buttonAction(n: 3,answer:myQuizWord5)
                            },
                            index: 3,
                            answer: myQuizWord5
                        )
                
                        Spacer()
                    
                    }
                    
                    else {
                        FinalQuizScreen(score: self.score)
                    }
                }
                
                
                
            }
            .padding(.horizontal, 32)
            
            
            
        }
    }
    
   
    func buttonAction( n : Int, answer : [QuizWordModel]){
        
        if(answer[self.i].corect == n){
            self.score = self.score + 1
            self.isCorrectAnswer = true
        }else {
            self.isCorrectAnswer = false
            print(self.isCorrectAnswer)
            
        }
        
        self.i = self.i + 1
        
    }
}

//struct QuizWord_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizWord(title: "ayo")
//    }
//}



struct ButtonOptionWord: View {
    @Binding  var question : Int
    @Binding var isPresent : Bool
    @Binding var isCorrectAnswer : Bool
    var voidCheckAnswer : () -> Void
    var index : Int
    var answer : [QuizWordModel]
    
    var body: some View {
        Button(action:{
            voidCheckAnswer()
            isPresent = true
            
            
            isCorrectAnswer == true ? SoundManager.instance.playSoundQuiz(key: "correct")
            : SoundManager.instance.playSoundQuiz(key: "wrong")
            
        }){
            ZStack{
                Image("wood")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width - 32 , height: 100)
                
                if self.question < answer.count {
                    Text(answer[self.question].answer[index])
                        .font(.system(size: 64))
                        .fontWeight(.bold)
                        .foregroundColor(Color("orangeColor"))
                }
                
                
            } .alert(isPresented: $isPresent) {
                
                Alert(
                               title: Text("Quiz Result"),
                               message: isCorrectAnswer == true ?
                               Text("Yhee Congratulation 🥳")
                                .font(.system(size: 36))
                                .fontWeight(.semibold)


                               : Text("Yahh Try Again 😭")
                                .font(.system(size: 36))
                                .fontWeight(.semibold),

                               primaryButton: .default(Text("OK")),
                               secondaryButton: .cancel()
                           )

            }
            
            
        }
    }
}
