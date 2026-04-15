//
//  jisho.swift
//  memoraJisho
//
//  Created by Budhil Thijm on 4/14/26.
//

//functions for dealing with read only SQL database
protocol Jishoable {
    //Main Glossary Entries
    
    /**
     This Function obtains the full entry.
     */
    func getEntry(unnormalizedInput: String) -> EntryDetail
    func getEntryEnglish(english: String) -> EntryDetail
    func getEntryKanji(kanji : String) -> EntryDetail
    func getEntryKana(normalizedKana : String) -> EntryDetail
    func getEntryRomanji(romanji : String) -> EntryDetail
    
    //Name entries
    func getName(unnormalizedInput: String) -> NameEntry
    func getNameKanji(kanji : String) -> NameEntry
    func getNameNanori(nanori : String) -> NameEntry
    func getNameKana(kana : String) -> NameEntry
    
    //radicals
    func getKanji(unnormalizedInput : String) -> KanjiDetail
    func getKanjiRadicals(radicals : String) -> KanjiDetail
    func getKanjiReading(reading : String) -> KanjiDetail
}
