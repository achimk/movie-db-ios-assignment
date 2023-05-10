//
//  MoviePageQuery.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Foundation

struct MoviePageQuery: Equatable {
    let value: Int
    
    static let initial: MoviePageQuery = {
        return MoviePageQuery(1)
    }()
    
    private init(_ value: Int) {
        assert(value > 0)
        self.value = value
    }
    
    init?(page: Int) {
        guard page > 0 else { return nil }
        self.value = page
    }
    
    func nextPage() -> MoviePageQuery {
        return MoviePageQuery(value.advanced(by: 1))
    }
}


