//
//  Sense.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//
import GRDB

struct Sense: FetchableRecord, Hashable {
    let id: Int
    let entryID: Int
    let pos: String?        // part of speech, comma-separated
    let field: String?      // domain field, comma-separated
    let misc: String?       // miscellaneous info
    let dialect: String?
    let sInf: String?       // sense-level note shown to user
    let xref: String?       // cross-reference to related entry
    let antonym: String?

    init(row: Row) {
        id      = row["id"]
        entryID = row["entry_id"]
        pos     = row["pos"]
        field   = row["field"]
        misc    = row["misc"]
        dialect = row["dialect"]
        sInf    = row["s_inf"]
        xref    = row["xref"]
        antonym = row["antonym"]
    }
}
