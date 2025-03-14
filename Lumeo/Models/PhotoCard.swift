//
//  PhotoCard.swift
//  Lumeo
//
//  Created by Elvis Rexha on 14/03/2025.
//

import Foundation
import SwiftUI

struct PhotoCard: Identifiable, Hashable {
    var id: UUID = .init()
    var images: [UIImage]
    var creationDate: Date
    var photoCardColor: Color
    var note: Note?
}

extension PhotoCard {
    static func photoCardPreviews() -> [PhotoCard] {
        return [
            .init(images: [], creationDate: .now, photoCardColor: .lumeoButton, note: .init(text: "Some text for the photo card note will go here")),
            .init(images: [], creationDate: .now, photoCardColor: .lumeoButton, note: nil),
            .init(images: [], creationDate: .now, photoCardColor: .lumeoButton)
        ]
    }
    
    static func photoCardPreview() -> PhotoCard {
        return photoCardPreviews()[0]
    }
}


