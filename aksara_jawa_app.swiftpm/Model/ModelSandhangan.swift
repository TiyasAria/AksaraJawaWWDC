//
//  ModelSandhangan.swift
//  aksara_jawa_app
//
//  Created by tiyas aria on 12/04/23.
//

import Foundation

struct ModelSandhangan : Identifiable {
    let id = UUID()
    let latin : String
    let image : String
    let function : String
    let exampleWord : [String]
    let sound : [String]
}

let dataSandhangan : [ModelSandhangan] = [
  ModelSandhangan(
    latin: "Wulu",
    image: "ꦶ",
    function: "Wulu is used to represent the vowel i in a word. Sandhangan wulu is written above the end of the script.",
    exampleWord: ["ꦲꦶ", "ꦏꦶ" , "I" , "Ki"],
    sound: ["I" , "Ki"]
  ),
  ModelSandhangan(
    latin: "Suku",
    image: "ꦸ",
    function: "Suku used to represent the vowel u.Suku written below and at the end of the character",
    exampleWord: ["ꦧꦸ", "ꦏꦸ" , "Bu" , "Ku"],
    sound: ["Bu" , "Ku"]
  ),
  ModelSandhangan(
    latin: "Taling",
    image: "ꦺ",
    function: "Taling is used to symbolize the vowel é utawa è (lele, sate, tuwek, gule, luwe, Lsp). Taling is written in front of the character whose sound will be changed.",
    exampleWord: ["ꦭꦺ","ꦭꦺ" , "Le" , "Le"],
    sound: ["Le", "Le2"]
  ),
  
  ModelSandhangan(
    latin: "Taling Tarung",
    image: "ꦺꦴ",
    function: "Taling Tarung used to represent the vowel sound \"o\". Taling Tarung written to squeeze the character whose sound will be changed.",
    exampleWord: ["ꦭꦺꦴ" ,"ꦫꦺꦴ","Lo", "Ro"],
    sound: ["Lo" ,"Ro"]
  ),
  
  
  ModelSandhangan(
    latin: "Pepet",
    image: "ꦼ",
    function: "Pepet is used to represent the vowel e/ in syllables. Pepet is written above the end of the character.",
    exampleWord: ["ꦒꦼ","ꦝꦼ" , "Ge" , "Dhe"],
  sound: ["Ge" , "Dhe"]
  ),

]
