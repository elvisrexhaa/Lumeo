//
//  LumeoBackground.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import SwiftUI

struct LumeoBackground: View {
    var body: some View {
        Color.lumeoBg
            .ignoresSafeArea()
            .overlay {
                // Overlay with stars
                GeometryReader { geometry in
                    ZStack {
                        ForEach(StarShape.generateStars(screenSize: geometry.size)) { star in
                            Star()
                                .frame(width: star.size.width, height: star.size.height)
                                .foregroundStyle(star.color)
                                .position(star.position)
                                
                        }
                    }
                }
            }
    }
}

#Preview {
    LumeoBackground()
}
