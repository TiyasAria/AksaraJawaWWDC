//
//  DetailLearnSadhangan.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 11/04/23.
//

import SwiftUI

struct DetailLearnSadhangan: View {
    
  
    
    var body: some View {
        ZStack{
            Color("lightBrownTwo")
            VStack{
                Text("Sandhangan Swara")
                    .font(.system(size: 48))
                    .fontWeight(.semibold)
                    .padding(.bottom, 10)
                
                List{
                    ForEach(dataSandhangan) { index in
                        
                        ItemSandhanganSwara(itemSandhangan: index)
                    }
                    .listRowBackground(Color.clear)
                }
                .listStyle(.plain)
   
            }
            .padding(.horizontal, 16)
            .padding(.vertical , 20)
        }
        
    }
}


struct DetailLearnSadhangan_Previews: PreviewProvider {
    static var previews: some View {
        DetailLearnSadhangan()
    }
}




struct ItemSandhanganSwara : View{
    @State var isOpen : Bool = false
    let itemSandhangan : ModelSandhangan
    
    var body : some View {
        DisclosureGroup(
            isExpanded: $isOpen,
            content: {
                Text(itemSandhangan.function)
                    .font(.system(size: 32, weight: .regular ))
                    .lineLimit(5)
                    .minimumScaleFactor(0.5)
                    .padding(.bottom, 14)
                
                Text("Press the characters,listen and let's memorize them")
                    .fontWeight(.medium)
                    .padding(.horizontal,24)
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                    .padding(.bottom , 14)
                
                HStack {
                     Spacer()
                    BoxItem(
                        aksara: itemSandhangan.exampleWord[0],
                            huruf: itemSandhangan.exampleWord[2],
                        sound: itemSandhangan.sound[0]
                    )
                    
                  
                    Spacer()
                    BoxItem(aksara: itemSandhangan.exampleWord[1],
                            huruf: itemSandhangan.exampleWord[3],
                            sound: itemSandhangan.sound[1]
                         )
                    
                    Spacer()
                 
                }
              
            },
            label: {
                HStack{
                    
                    Text(itemSandhangan.latin)
                        .font(.system(size: 32))
                        .fontWeight(.medium)
                    
                    Text("( \(itemSandhangan.image) )")
                        .font(.system(size: 32))
                        .fontWeight(.medium)
                    
                    Spacer()
                }
                .padding(.bottom, 14)
            }
        )
    }
}



