//
//  MovieDetailsRepository.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Combine

protocol MovieDetailsRepository {
    func findDetails(for id: MovieId) -> AnyPublisher<MovieDetails, MovieError>
}
