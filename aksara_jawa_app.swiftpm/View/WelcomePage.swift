//
//  WelcomePage.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 11/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct WelcomePage: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color("lightBrownTwo")
                    .ignoresSafeArea()
                
                VStack{
                    Text("Aksara Jawa")
                        .padding(.top, 20)
                        .fontWeight(.semibold)
                        .font(.system(size: 64))
                        
                    
                    NavigationLink(destination:HomeScreen(), label: {
                        Text("Play")
                            .frame(width: UIScreen.main.bounds.width - 200, height: 100)
                            .font(.system(size: 48))
                            
                            .foregroundColor(Color("orangeColor"))
                            .background(Color("darkBrown"))
                        .cornerRadius(45)
                    })
                    .padding(.bottom, 50)
                   
                    
                    Image("maskot")
                        .resizable()
                        .frame(width: 600 , height: 850 )
                      
                        
                }
            }
           
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            WelcomePage()
        } else {
            // Fallback on earlier versions
        }
    }
}
