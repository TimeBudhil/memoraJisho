//
//  Normalizable.swift
//  memoraJisho
//
//  Created by Budhil Thijm on 4/14/26.
//

protocol Normalizable {
    //take any input, normalize it to access repository well
    func normalize(_ input : String) -> String
    
    //identify the kind of input
    func identifyInput(input : String) -> inputType
    
    //turn romanji input to hiragana!
    //these two functions used so that for romanji input, we want to search for all three kinds ? possibly useful functions, should reassess
    func romanjiToHiragana(romanji : String) -> String
    func katakanaToHiragana(katakana : String) -> String
    func hiraganaToKatakana(hiragana : String) -> String
    
    
}

public struct inputType {
    Kanji, Hiragana, Katakana, English, Romanji
}
