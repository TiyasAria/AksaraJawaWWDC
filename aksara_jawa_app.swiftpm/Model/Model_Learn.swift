//
//  File.swift
//  
//
//  Created by tiyas aria on 11/04/23.
//

import Foundation

struct ModelLearnAksara : Identifiable, Hashable {
    let id = UUID()
    let title : String
    let desc : String
    let aksaraJawa : [String]
    let aksaraLatin : [String]
    let sound : [String]
}

let dataAksaraCarakan : [ModelLearnAksara] = [
    ModelLearnAksara(
        title: "ꦲ ꦭ ꦠ ꦪ",
        desc: "The script that you will learn are Ha, La, Ta, Ya. Have a resemblance that is, it has 3 arches in its writing",
        aksaraJawa: ["ꦲ", "ꦭ", "ꦠ", "ꦪ"],
        aksaraLatin: ["Ha" , "La" , "Ta" , "Ya"],
        sound:["Ha" , "La" , "Ta" , "Ya"]
    
    ),
    
    ModelLearnAksara(
        title: "ꦤ ꦢ ꦕ ꦱ",
        desc: """
The script that you will learn
are Na, Da, Ca, Sa . Have a resemblance
which has a circle in the writing and there is a reverse direction of the circle.
""",
        aksaraJawa: ["ꦤ", "ꦢ", "ꦕ", "ꦱ"],
        aksaraLatin: ["Na" , "Da" , "Ca" , "Sa"],
        sound:["Na" , "Da" , "Ca" , "Sa"]
    ),
    
    ModelLearnAksara(
        title: "ꦥ ꦮ ꦫ ꦒ",
        desc: "The script that you will learn are Pa, Wa, Ra, Ga. Have a resemblance namely the shape of the letters that are almost similar and the only difference is the sharpness in one of the curves",
        aksaraJawa: ["ꦥ", "ꦮ" , "ꦫ",  "ꦒ"],
        aksaraLatin: ["Pa" , "Wa" , "Ra" , "Ga"],
        sound: ["Pa" , "Wa" , "Ra" , "Ga"]
    ),
    
    ModelLearnAksara(
        title: "ꦏ ꦝ ꦗ ꦩ",
        desc: "The script that you will learn are Ka, Dha, Ja, Ma. This script is the most different script and has no resemblance to other scripts, so they are grouped into one.",
        aksaraJawa: ["ꦏ", "ꦝ", "ꦗ", "ꦩ"],
        aksaraLatin: ["Ka" , "Dha" , "Ja" , "Ma"],
        sound: ["Ka" , "Dha" , "Ja" , "Ma"]
    ),
    
    ModelLearnAksara(
        title: "ꦚ ꦧ ꦛ ꦔ",
        desc: "The script that you will learn are Nya, Ba, Tha, Nga. The similarity of this script is that it has an initial form that is separate from its second form.",
        aksaraJawa: ["ꦚ", "ꦧ" , "ꦛ" , "ꦔ"],
        aksaraLatin: ["Nya" , "Ba" , "Tha" , "Nga"],
        sound:["Nya" , "Ba" , "Tha" , "Nga"]
    ),
    
 
    
    
]
