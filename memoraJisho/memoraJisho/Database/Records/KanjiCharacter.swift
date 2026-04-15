//
//  KanjiCharacter.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

import GRDB
struct KanjiCharacter: FetchableRecord, Hashable {
    let literal: String
    let radicalClassical: Int?
    let radicalNelson: Int?
    let grade: Int?             // 1-6 = kyouiku; 8 = jouyou; 9/10 = jinmeiyou
    let strokeCount: Int?
    let freq: Int?              // newspaper frequency rank
    let jlptOld: Int?           // pre-2010 JLPT level 1-4
    let onReadings: String?     // comma-separated
    let kunReadings: String?    // comma-separated, okurigana after dot
    let nanori: String?         // comma-separated name readings
    let meaningsEn: String?     // comma-separated English meanings
    let radName: String?
    let skipCode: String?

    // Convenience: split comma-separated fields into arrays
    var onReadingList:  [String] { splitCSV(onReadings)  }
    var kunReadingList: [String] { splitCSV(kunReadings) }
    var nanoriList:     [String] { splitCSV(nanori)      }
    var meaningList:    [String] { splitCSV(meaningsEn)  }

    init(row: Row) {
        literal          = row["literal"]
        radicalClassical = row["radical_classical"]
        radicalNelson    = row["radical_nelson"]
        grade            = row["grade"]
        strokeCount      = row["stroke_count"]
        freq             = row["freq"]
        jlptOld          = row["jlpt_old"]
        onReadings       = row["on_readings"]
        kunReadings      = row["kun_readings"]
        nanori           = row["nanori"]
        meaningsEn       = row["meanings_en"]
        radName          = row["rad_name"]
        skipCode         = row["skip_code"]
    }

    private func splitCSV(_ s: String?) -> [String] {
        guard let s, !s.isEmpty else { return [] }
        return s.components(separatedBy: ",").map { $0.trimmingCharacters(in: .whitespaces) }
    }
}
