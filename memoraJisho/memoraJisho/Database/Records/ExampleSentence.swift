//
//  ExampleSentence.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

import GRDB
struct ExampleSentence: FetchableRecord, Hashable {
    let id: Int
    let senseID: Int
    let sourceID: String?   // Tatoeba sentence ID
    let keyword: String?    // the headword as it appears in the sentence
    let japanese: String
    let english: String

    init(row: Row) {
        id       = row["id"]
        senseID  = row["sense_id"]
        sourceID = row["source_id"]
        keyword  = row["keyword"]
        japanese = row["japanese"]
        english  = row["english"]
    }
}
