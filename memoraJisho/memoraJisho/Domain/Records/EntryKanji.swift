//
//  EntryKanji.swift
//  memora
//
//  Created by Budhil Thijm on 3/23/26.
//
import GRDB

struct EntryKanji: FetchableRecord, Hashable {
    let id: Int
    let entryID: Int
    let text: String
    let priority: String?
    let info: String?

    init(row: Row) {
        id       = row["id"]
        entryID  = row["entry_id"]
        text     = row["text"]
        priority = row["priority"]
        info     = row["info"]
    }
}
