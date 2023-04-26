//
//  MenuScreen.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 11/04/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        TabView{
            LearnScreen().tabItem {
                Image(systemName: "book.fill")
                Text("Learn")
            }
            
            QuizScreen().tabItem {
                Image(systemName: "gamecontroller.fill")
                Text("Quiz")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
       HomeScreen()
    }
}
