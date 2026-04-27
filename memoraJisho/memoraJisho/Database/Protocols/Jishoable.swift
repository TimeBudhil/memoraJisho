//
//  jisho.swift
//  memoraJisho
//
//  Created by Budhil Thijm on 4/14/26.
//

//functions for dealing with read only SQL database
//Repository layer, only dealing with queries,
protocol Jishoable {
    //Main Glossary Entries
    
    /**
     This Function obtains the full entry.
     */
    func getEntry(normalizedinput: String, type: inputType) -> EntryDetail
    func getEntryEnglish(english: String) -> EntryDetail
    func getEntryKanji(kanji : String) -> EntryDetail
    func getEntryKana(normalizedKana : String) -> EntryDetail
    func getEntryRomanji(romanji : String) -> EntryDetail
    
    //Name entries
    func getName(normalizedinput: String, type: inputType) -> NameEntry
    func getNameKanji(kanji : String) -> NameEntry
    func getNameNanori(nanori : String) -> NameEntry
    func getNameKana(kana : String) -> NameEntry
    
    //radicals
    func getKanji(normalizedinput : String, type: inputType) -> KanjiDetail
    func getKanjiLiteral(kanjiLiteral : String) -> KanjiDetail
    func getKanjiRadicals(radicals : String) -> KanjiDetail
    func getKanjiReading(reading : String) -> KanjiDetail
}
