//
//  Gloss.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

import GRDB
struct Gloss: FetchableRecord, Hashable {
    let id: Int
    let senseID: Int
    let text: String
    let gType: String?      // nil = regular gloss; "expl" = explanation; "fig" = figurative

    init(row: Row) {
        id      = row["id"]
        senseID = row["sense_id"]
        text    = row["text"]
        gType   = row["g_type"]
    }
}
