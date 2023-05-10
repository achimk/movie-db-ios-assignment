//
//  MovieRepository.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Combine

protocol MovieRepository {
    func findAll(for categoryQuery: MovieCategoryQuery) -> AnyPublisher<[Movie], MovieError>
    func findAll(for pageQuery: MoviePageQuery) -> AnyPublisher<MoviePageResult, MovieError>
}
