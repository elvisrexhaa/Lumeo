//
//  CharacterLimit.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import Foundation
import SwiftUI

enum CharacterLimit {
    case none
    case halfway
    case full
    
    var characterLimitColor: Color {
        switch self {
        case .none:
            return .clear
        case .halfway:
            return .yellow
        case .full:
            return .red
        }
    }
    
    var blur: CGFloat {
        switch self {
        case .none:
            return 0
        case .halfway:
            return 2
        case .full:
            return 5
        }
    }
    
    static func fromCount(_ count: Int) -> CharacterLimit {
        switch count {
        case 0...24:
            return .none
        case 25...49:
            return .halfway
        case 50...:
            return .full
        default:
            return .none // Fallback, though not needed with current ranges
        }
    }
}
