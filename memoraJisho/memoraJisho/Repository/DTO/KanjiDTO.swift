//
//  KanjiDetail.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

//top of tree
struct KanjiDTO: Identifiable, Hashable {
    let character: KanjiCharacter
    let pitchAccents: [PitchAccent]
    let radicals: [String]          // component characters from kanji_radicals

    var id: String { character.literal }
}
