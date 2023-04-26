//
//  DetailLearnCarakan.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 11/04/23.
//

import SwiftUI





struct DetailLearnCarakan: View {
    let item : ModelLearnAksara
    

    var body: some View {
        ScrollView {
            ZStack{
                Color("lightBrownTwo")
                VStack{
                    Text("Aksara Carakan")
                        .font(.system(size: 48))
                        .fontWeight(.semibold)
                        .padding(.bottom, 10)
                    
                    Text(item.desc)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 32))
                        .padding(.bottom , 40)
                        .lineLimit(4)
                       
                       
                    
                    Text("Press the characters,listen and let's memorize them")
                        .fontWeight(.medium)
                        .padding(.horizontal,24)
                        .font(.system(size: 40))
                        .multilineTextAlignment(.center)
                        .padding(.bottom , 40)
                        .lineLimit(2)
                    
                    HStack {
                        BoxItem(
                            aksara: item.aksaraJawa[0],
                            huruf: item.aksaraLatin[0],
                            sound:item.sound[0]
                        )
                        .padding(.trailing, 25)
                        
                        
                        
                        
                        BoxItem(
                            aksara: item.aksaraJawa[1],
                            huruf: item.aksaraLatin[1],
                            sound: item.sound[1]
                        )
                        
                    }
                    
                    HStack {
                        BoxItem(
                            aksara: item.aksaraJawa[2],
                            huruf: item.aksaraLatin[2],
                            sound: item.sound[2]
            
                                             
                        )
                        .padding(.trailing, 25)
                       
                        
                        
                        
                        BoxItem(
                            aksara: item.aksaraJawa[3],
                            huruf: item.aksaraLatin[3],
                            sound: item.sound[3]
                        )
                       
                
                    }.padding(.bottom,60)
                    
                    
                    NavigationLink(destination:QuizWord(title: item.title), label: {
                        Text("Take a Quiz")
                            .frame(width: UIScreen.main.bounds.width - 300, height: 100)
                            .font(.system(size: 48))
                            
                            .foregroundColor(Color("orangeColor"))
                            .background(Color("darkBrown"))
                        .cornerRadius(45)
                    })
                    .padding(.bottom, 50)
                    
                  

                }
                .padding(.horizontal, 16)
                .padding(.vertical , 20)
            }
        }
    }
}


import AVFoundation


struct BoxItem : View {
    var aksara : String
    var huruf : String
    var sound : String
    
    

    
    var body : some View {

        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("darkBrown"))
                .frame(width: 240, height: 240)
                .shadow(color: .gray, radius: 0.0, x: 0, y: 4)
            
            VStack{
                Text(aksara)
                    .font(.system(size: 100))
                    .fontWeight(.regular)
                    .foregroundColor(Color("orangeColor"))
                    .padding(.bottom, 8)
                
                Text(huruf)
                    .font(.system(size: 64))
                    .fontWeight(.bold)
                    .foregroundColor(Color("orangeColor"))
                
            }
        }
        .onTapGesture {
            SoundManager.instance.playSound(key: sound)
        }
        
    }
}



