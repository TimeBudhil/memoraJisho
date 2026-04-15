//
//  EntryDetail.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

//top of tree
struct EntryDetail: Identifiable, Hashable {
    let entry: Entry
    let kanjiforms: [EntryKanji]
    let readings: [(Reading, [PitchAccent])]
    let senses: [SenseDetail]

    var id: Int { entry.id }

    /// Primary display form — first kanji headword, or first reading if none.
    var headword: String {
        kanjiforms.first?.text ?? readings.first?.0.text ?? ""
    }

    /// Short reading string for subtitle display, e.g. "たべる"
    var primaryReading: String {
        readings.first?.0.text ?? ""
    }

    /// First English gloss across all senses — used in list rows.
    var shortDefinition: String {
        senses.first?.glosses.first?.text ?? ""
    }

    // Tuple isn't Hashable automatically, so we implement manually.
    static func == (lhs: EntryDetail, rhs: EntryDetail) -> Bool {
        lhs.entry.id == rhs.entry.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(entry.id)
    }
}

