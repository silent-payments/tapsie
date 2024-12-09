//
//  Onboarded.swift
//  tapsie
//
//  Created by Adam Vandover on 12/5/24.
//

import Foundation
import SwiftData

@Model
final class Onboarded {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
