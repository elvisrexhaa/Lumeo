//
//  LumeoButton.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import SwiftUI

struct LumeoButton: View {
    var title: String = "Upload Photos"
    var systemImage: String?
    let action: () -> ()
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: UIScreen.main.bounds.height * 0.05)
                .padding(.horizontal)
                .offset(y: 8)
                .foregroundStyle(.lumeoButton.opacity(0.4).shadow(.drop(color: .lumeoButton, radius: 20)))
            
            
            Button {
                action()
            } label: {
                if let systemImage = systemImage {
                    Image(systemName: systemImage)
                } else {
                    Text(title)
                }
            }
        }
        .lumeoButtonStyle()
        
    }
}

#Preview {
    LumeoButton {
        //
    }
}

struct LumeoButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Halu", size: configuration.isPressed ? 26 : 22))
            .kerning(2)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 12)
            .background(.lumeoButton, in: Capsule())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .rotationEffect(.degrees(configuration.isPressed ? 3 : 0))
            .animation(.snappy, value: configuration.isPressed)
            .padding(.horizontal)
    }
}

#Preview {
    Button(action: { print("Pressed") }) {
        Label("Press Me", systemImage: "star")
    }
    .buttonStyle(LumeoButtonStyle())
}


struct LumeoButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(LumeoButtonStyle())
    }
}

extension View {
    func lumeoButtonStyle() -> some View {
        self
            .modifier(LumeoButtonModifier())
    }
}
