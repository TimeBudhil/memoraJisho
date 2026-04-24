//
//  NameEntry.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

import GRDB
//top of tree
struct NameEntry: FetchableRecord, Hashable {
    let id: Int
    let kanji: String?
    let reading: String
    let allKanji: String?       // pipe-separated
    let allReadings: String?    // pipe-separated
    let nameTypes: String?      // comma-separated
    let translations: String?   // comma-separated

    var kanjiList:       [String] { splitPipe(allKanji)       }
    var readingList:     [String] { splitPipe(allReadings)     }
    var nameTypeList:    [String] { splitCSV(nameTypes)        }
    var translationList: [String] { splitCSV(translations)     }

    init(row: Row) {
        id           = row["id"]
        kanji        = row["kanji"]
        reading      = row["reading"]
        allKanji     = row["all_kanji"]
        allReadings  = row["all_readings"]
        nameTypes    = row["name_types"]
        translations = row["translations"]
    }

    private func splitCSV(_ s: String?) -> [String] {
        guard let s, !s.isEmpty else { return [] }
        return s.components(separatedBy: ",").map { $0.trimmingCharacters(in: .whitespaces) }
    }

    private func splitPipe(_ s: String?) -> [String] {
        guard let s, !s.isEmpty else { return [] }
        return s.components(separatedBy: "|").map { $0.trimmingCharacters(in: .whitespaces) }
    }
}
