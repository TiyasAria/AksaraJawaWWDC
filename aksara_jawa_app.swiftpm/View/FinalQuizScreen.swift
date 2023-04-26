//
//  FinalQuizScreen.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 17/04/23.
//

import SwiftUI

struct FinalQuizScreen: View {
    var score : Int
    var body: some View {
        ZStack {
            Color("lightBrownTwo")
            VStack(spacing: 20){
                Spacer()
                Text("Congratulation")
                    .font(.system(size: 64))
                    .fontWeight(.semibold)
                Image("tromphy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 244, height: 250)
                
                Text("You get score ")
                    .font(.system(size: 36))
                    .fontWeight(.regular)
                
                Text("\(score)")
                    .fontWeight(.bold)
                    .onAppear(){
                        saveScore(quiz: "myQuiz", score: self.score)
                    }
                    .font(.system(size: 68))
                
                Spacer()
            }
        }
        
    }
}

struct FinalQuizScreen_Previews: PreviewProvider {
    static var previews: some View {
       FinalQuizScreen(score: 1)
    }
}

