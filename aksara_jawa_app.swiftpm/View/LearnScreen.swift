//
//  LearnScreen.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 11/04/23.
//

import SwiftUI

struct LearnScreen: View {
    @State var isOpen : Bool = false
    @State var isOpenTwo : Bool = false
    var index = 0
    
    
    
    var body: some View {
        ZStack{
            Color("lightBrownTwo")
            VStack(alignment: .leading){
                Text("Hello, Let's learn ")
                    .font(.system(size: 48))
                    .fontWeight(.semibold)
                    .padding(.top , 25)
                    .padding(.bottom, 28)
                
                
                
                Button {
                    isOpen.toggle()
                    
                } label: {
                    
                    HStack {
                        ItemLearn(title: "Aksara Carakan")
                        Spacer()
                        (isOpen)  ?
                        
                        Image( systemName: "chevron.down")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                        : Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                        
                        
                    }
                    
                }
                
                
                
                if (isOpen == true) {
                    List {
                        ForEach(dataAksaraCarakan.indices, id: \.self) { index in
                            let item = dataAksaraCarakan[index]
                            
                            NavigationLink(destination: DetailLearnCarakan(item: item)){
                                ItemList(titleLearn: "Aksara Carakan \(index + 1)", title: item.title)
                                    .padding()
                            }
                            
                            .listRowBackground(Color.clear)
                            
                        }
                    }
                    .listStyle(.plain)
                    
                    
                    
                    
                }
                
                
                
                Divider()
                    .frame(height: 1)
                    .overlay(.black)
                
                Button {
                    isOpenTwo.toggle()
                } label: {
                    HStack {
                        ItemLearn(title: "Aksara Sandhangan")
                        Spacer()
                        
                        
                        (isOpenTwo)  ?
                        
                        Image( systemName: "chevron.down")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                        : Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                        
                        
                    }
                }
                
                
                
                
                if (isOpenTwo == true) {
                    
                    NavigationLink(destination: DetailLearnSadhangan( )) {
                        ItemList(titleLearn: "Sandhangan Swara", title: "ꦶ ꦺ ꦺꦴ ꦸ ꦼ ")
                            .padding(.bottom, 20)
                    }
                }
                
                Spacer()
                
            }
            
            .padding(.horizontal)
        }
    }
}

struct LearnScreen_Previews: PreviewProvider {
    static var previews: some View {
        LearnScreen()
    }
}

struct ItemLearn : View {
    
    var title : String
    
    var body : some View{
        
        VStack(alignment: .leading){
            Text(title)
                .font(.system(size: 36))
                .fontWeight(.medium)
                .foregroundColor(Color.black)
            
            Text("Let’s study and remember it")
                .font(.system(size: 24))
                .fontWeight(.regular)
                .foregroundColor(Color.black)
            
        }
        
    }
}





struct ItemList : View {
    var titleLearn : String
    var title : String
    var index = 0
    var body : some View{
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("lightBrown"))
                .frame(width: UIScreen.main.bounds.width - 32, height: 113)
                .shadow(color: .gray, radius: 0.1, x: 0, y: 4)
            
            HStack {
                VStack(alignment: .leading){
                    Text(titleLearn)
                        .font(.system(size: 32))
                        .fontWeight(.regular)
                    Text(title)
                        .font(.system(size: 48))
                        .fontWeight(.regular)
                }
                
                
                Spacer()
            }
            
            .padding(.horizontal, 16)
        }
    }
}
