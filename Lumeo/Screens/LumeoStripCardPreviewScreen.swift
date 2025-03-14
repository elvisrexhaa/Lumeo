//
//  LumeoStripCardScreen.swift
//  Lumeo
//
//  Created by Elvis Rexha on 13/03/2025.
//

import SwiftUI

struct LumeoStripCardScreen: View {
    @State private var animateLumeoStripCardScreen: Bool = false
    var images: [UIImage] = []
    
    
    var body: some View {
        ZStack {
            LumeoBackground()
                .ignoresSafeArea()
            
            VStack {
                Text("PREVIEW")
                    .font(.custom("Halu", size: 40))
                    .foregroundStyle(.primary)
                    .padding(.top, 30)
                    .offset(y: animateLumeoStripCardScreen ? 0 : -UIScreen.main.bounds.height)
                    
                
                stripCard
                    .offset(y: animateLumeoStripCardScreen ? 0 : UIScreen.main.bounds.height)
            }
//            .scaleEffect(animateLumeoStripCardScreen ? 1 : 0.3)
        }
        .onAppear {
            withAnimation(.snappy(duration: 0.8)) {
                animateLumeoStripCardScreen = true
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LumeoStripCardScreen()
}

extension LumeoStripCardScreen {
    private var stripCard: some View {
        GeometryReader { reader in
            let size = reader.size
            VStack {
                ForEach(images, id: \.self) { image in
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(16/16, contentMode: .fill)
                        .clipShape(.rect(cornerRadius: 15))
                        .frame(width: size.width * 0.25, height: size.height * 0.15)
                }
            }
            .padding(20)
            .padding(.bottom, 40)
            .background(.background.shadow(.drop(radius: 10)), in: .rect(cornerRadius: 15))
            .overlay(alignment: .bottom, content: {
                Text("30/10/2025")
                    .font(.custom("Halu", size: 20))
                    .padding(.bottom, 20)
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}
