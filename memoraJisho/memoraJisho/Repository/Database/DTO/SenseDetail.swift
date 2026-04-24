//
//  SenseDetail.swift
//  memora
//
//  Created by Budhil Thijm on 3/22/26.
//

struct SenseDetail: Identifiable, Hashable {
    let sense: Sense
    let glosses: [Gloss]
    let examples: [ExampleSentence]

    var id: Int { sense.id }

    /// Comma-separated part-of-speech tags split into an array for badge display.
    var posList: [String] {
        guard let pos = sense.pos, !pos.isEmpty else { return [] }
        return pos.components(separatedBy: ",")
            .map { $0.trimmingCharacters(in: .whitespaces) }
            .filter { !$0.isEmpty }
    }
}

