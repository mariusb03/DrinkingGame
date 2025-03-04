//
//  Item.swift
//  DrinkingGame
//
//  Created by Marius Bringsvor Rusten on 04/03/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
