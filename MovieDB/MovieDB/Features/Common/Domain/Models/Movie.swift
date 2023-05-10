//
//  Movie.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Foundation

struct Movie: Identifiable {
    let id: MovieId
    let title: String?
    let posterURL: URL?
    let rating: Rating?
    let duration: Duration?
    let releaseDate: Date?
}
