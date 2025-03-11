//
//  StarShape.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import Foundation
import SwiftUI

struct StarShape: Identifiable {
    var id: String = UUID().uuidString
    var size: CGSize
    var color: Color
    var position: CGPoint
}

extension StarShape {
    static func generateStars(screenSize: CGSize) -> [StarShape] {
        let _: CGFloat = 10
        let maxX: CGFloat = screenSize.width - 10
        let _: CGFloat = 10
        let maxY: CGFloat = screenSize.height - 10
        
        
        return [
            StarShape(size: CGSize(width: 30, height: 30), color: .lumeoButton, position: CGPoint(x: maxX * 0.1, y: maxY * 0.2)),
            StarShape(size: CGSize(width: 30, height: 30), color: .lumeoButton, position: CGPoint(x: maxX * 0.3, y: maxY * 0.05)),
            StarShape(size: CGSize(width: 30, height: 30), color: .lumeoButton, position: CGPoint(x: maxX * 0.9, y: maxY * 0.05)),
            StarShape(size: CGSize(width: 30, height: 30), color: .lumeoButton, position: CGPoint(x: maxX * 0.9, y: maxY * 0.3)),
            StarShape(size: CGSize(width: 30, height: 30), color: .lumeoButton, position: CGPoint(x: maxX * 0.5, y: maxY * 0.3)),
            StarShape(size: CGSize(width: 45, height: 45), color: .lumeoButton, position: CGPoint(x: maxX * 0.3, y: maxY * 0.8)),
            StarShape(size: CGSize(width: 35, height: 35), color: .lumeoButton, position: CGPoint(x: maxX * 0.7, y: maxY * 0.1)),
            StarShape(size: CGSize(width: 50, height: 50), color: .lumeoButton, position: CGPoint(x: maxX * 0.6, y: maxY * 0.7)),
            StarShape(size: CGSize(width: 22, height: 22), color: .lumeoButton, position: CGPoint(x: maxX * 0.4, y: maxY * 0.9)),
            StarShape(size: CGSize(width: 38, height: 38), color: .lumeoButton, position: CGPoint(x: maxX * 0.8, y: maxY * 0.9)),
            StarShape(size: CGSize(width: 38, height: 38), color: .lumeoButton, position: CGPoint(x: maxX * 0.9, y: maxY * 1)),
            StarShape(size: CGSize(width: 38, height: 38), color: .lumeoButton, position: CGPoint(x: maxX * 0.1, y: maxY * 1))
        ]
    }
}
