//
//  PitchAccent.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

import GRDB
//associated with kanji!
struct PitchAccent: FetchableRecord, Hashable {
    let id: Int
    let kanji: String?      // nil means this pattern applies to all kanji forms
    let reading: String     // kana reading this pattern belongs to
    let moraNumber: Int     // 0 = flat (heiban); N = drop after nth mora

    var isFlat: Bool { moraNumber == 0 }

    init(row: Row) {
        id          = row["id"]
        kanji       = row["kanji"]
        reading     = row["reading"]
        moraNumber  = row["mora_number"]
    }
}
