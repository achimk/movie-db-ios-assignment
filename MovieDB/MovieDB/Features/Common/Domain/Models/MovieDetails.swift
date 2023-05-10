//
//  MovieDetails.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Foundation

struct MovieDetails {
    let id: MovieId
    let title: String?
    let overview: String?
    let posterURL: URL?
    let duration: Duration?
    let releaseDate: Date?
    let genres: [String]
}
