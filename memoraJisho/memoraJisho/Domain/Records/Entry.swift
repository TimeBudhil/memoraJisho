//
//  Entry.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//
import GRDB

struct Entry: FetchableRecord, Hashable {
    let id: Int
    let isCommon: Bool

    init(row: Row) {
        id       = row["id"]
        isCommon = row["is_common"] == 1
    }
}
