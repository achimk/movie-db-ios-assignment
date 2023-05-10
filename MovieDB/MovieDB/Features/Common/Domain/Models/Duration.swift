//
//  Duration.swift
//  MoviewDB
//
//  Created by Joachim Kret on 10/05/2023.
//

import Foundation

struct Duration: Equatable {
    
    struct Components: Equatable {
        let hours: Int
        let minutes: Int
        
        fileprivate init(_ minutes: Int) {
            self.hours = Int(minutes / 60)
            self.minutes = minutes % 60
        }
    }
    
    let minutes: Int
    let components: Components
    
    public init?(_ minutes: Int?) {
        guard let minutes = minutes, minutes > 0 else { return nil }
        self.minutes = minutes
        self.components = Components(minutes)
    }
}
