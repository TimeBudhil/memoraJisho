//
//  Reading.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

import GRDB

struct Reading: FetchableRecord, Hashable {
    let id: Int
    let entryID: Int
    let text: String
    let noKanji: Bool
    let restrict: String?   // comma-separated kanji forms this reading applies to
    let priority: String?
    let info: String?

    init(row: Row) {
        id       = row["id"]
        entryID  = row["entry_id"]
        text     = row["text"]
        noKanji  = row["no_kanji"] == 1
        restrict = row["restrict"]
        priority = row["priority"]
        info     = row["info"]
    }
}

