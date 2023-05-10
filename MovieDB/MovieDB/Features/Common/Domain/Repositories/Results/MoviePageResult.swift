//
//  MoviePageResult.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Foundation

struct MoviePageResult {
    let movies: [Movie]
    let page: Int
    let isLastPage: Bool
    
    init(movies: [Movie], page: Int, isLastPage: Bool) {
        self.movies = movies
        self.page = page
        self.isLastPage = isLastPage
    }
    
    func nextPageQuery() -> MoviePageQuery? {
        return isLastPage ? nil : MoviePageQuery(page: page)?.nextPage()
    }
}
