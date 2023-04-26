//
//  QuizScreen.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 11/04/23.
//

import SwiftUI

struct QuizScreen: View {
    //    start for number question
    @State private var question : Int  = 0
    // for score
    @State private var score = 0
    @State private var isPresent = false
    @State private var isCorrectAnswer = false
    
    var body: some View {
        ZStack{
            Color("lightBrownTwo")
            VStack(alignment: .leading){
                Text("Hello, Let's play ")
                    .font(.system(size: 48))
                    .fontWeight(.semibold)
                    .padding(.top , 25)
                    .padding(.bottom, 10)
                
                
                Text("Please translate these words into Javanese script by pressing any of the 4 answer options given")
                    .font(.system(size: 24))
                    .fontWeight(.regular)
                    .padding(.bottom, 20)
                
                HStack {
                    
                   ButtonNextPrevious(
                    icon: "chevron.backward", action: previousQuestion)
                    Spacer()
                    ButtonNextPrevious(
                     icon: "chevron.forward", action: nextQuestion)
                }
                
                //                    looping when current question < total Question -> Play quiz
                
                if (self.question < myQuiz.count){
                    HStack {
                        Spacer()
                        Image(myQuiz[self.question].image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Spacer()
                    }
                    
                    
                    HStack {
                        Spacer()
                        Text(myQuiz[self.question].word)
                            .font(.system(size: 64))
                            .fontWeight(.semibold)
                            .padding(.bottom, 12)
                        Spacer()
                    }
                    
                    ButtonOptions(
                        question: $question,
                        isPresent: $isPresent,
                        isCorrectAnswer: $isCorrectAnswer,
                        void: {
                            checkAnswer(n: 0)
                        },
                        index: 0)
                    
                    ButtonOptions(
                        question: $question,
                        isPresent: $isPresent,
                        isCorrectAnswer: $isCorrectAnswer,
                        void: {
                            checkAnswer(n: 1)
                        },
                        index: 1)
                    
                    ButtonOptions(
                        question: $question,
                        isPresent: $isPresent,
                        isCorrectAnswer: $isCorrectAnswer,
                        void: {
                            checkAnswer(n: 2)
                        },
                        index: 2)
                    
                    ButtonOptions(
                        question: $question,
                        isPresent: $isPresent,
                        isCorrectAnswer: $isCorrectAnswer,
                        void: {
                            checkAnswer(n: 3)
                        },
                        index: 3)
                    
                }
                
                else {
                    FinalQuizScreen(score: self.score)
                }
                
                Spacer()
                
                
            }
            .padding(.horizontal)
            .padding(.bottom)
            
        }
    }
    
    func checkAnswer(n : Int){
        if (myQuiz[self.question].correctAnswer == n) {
            self.score = self.score + 1
            self.isCorrectAnswer = true
            print(self.isCorrectAnswer)
            
        } else {
            self.isCorrectAnswer = false
            print(self.isCorrectAnswer)
            
        }
      
        self.question = self.question + 1
    }
    
    func nextQuestion() {
        if question < myQuiz.count - 1 {
            question += 1
        }
    }
    
    func previousQuestion() {
        if question > 0 {
            question -= 1
        }
    }
}

struct QuizScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuizScreen()
    }
}

struct ButtonOptions : View {
    @Binding  var question : Int
    @Binding var isPresent : Bool
    @Binding var isCorrectAnswer : Bool
    var void : () -> Void
    var index : Int
    
    var body : some View{
        Button(action: {
            void()
            isPresent = true
           
            
            isCorrectAnswer == true ? SoundManager.instance.playSoundQuiz(key: "correct")
            : SoundManager.instance.playSoundQuiz(key: "wrong")
            

                
        }, label: {
            ZStack{
                Image("wood")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width - 32 , height: 100)
                
                if self.question < myQuiz.count {
                    Text(myQuiz[question].answer[index])
                       .font(.system(size: 64))
                       .fontWeight(.bold)
                       .foregroundColor(Color("orangeColor"))
                }
                
                 
                
            }
        })
       
        
        .alert(isPresented: $isPresent) {

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


struct ButtonNextPrevious : View {
    var icon : String
    var action : () -> Void
    var body : some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("lightBrown"))
                    .frame(width: 50, height: 50)
                    .blur(radius: 4)
                    .shadow(color: .black.opacity(0.25), radius: 0.0, x: 0, y: 4)
                
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }

    }
}





