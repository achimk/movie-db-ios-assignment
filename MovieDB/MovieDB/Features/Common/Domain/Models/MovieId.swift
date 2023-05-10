//
//  MovieId.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Foundation

struct MovieId: Equatable, Hashable {
    let value: Int
    init?(_ value: Int?) {
        guard let value = value else { return nil }
        self.value = value
    }
}
