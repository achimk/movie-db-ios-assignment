//
//  Rating.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Foundation

struct Rating: Equatable {
    static let range: ClosedRange = (0.0...1.0)
    let value: Double
    
    private init?(_ value: Double?) {
        guard let value = value else { return nil }
        self.value = min(Rating.range.upperBound, max(Rating.range.lowerBound, value))
    }
}

extension Rating {
    static func make(_ value: Double?) -> Rating? {
        guard var value = value else { return nil }
        let range: ClosedRange<Double> = Rating.range
        value = min(range.upperBound, max(range.lowerBound, value))
        let rounded = ((value - range.lowerBound) / (range.upperBound - range.lowerBound)).round(to: 4)
        return Rating(rounded)
    }
}

extension Rating: Comparable {
    static func < (lhs: Rating, rhs: Rating) -> Bool {
        return lhs.value < rhs.value
    }
}

extension Double {
    fileprivate func round(to places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
