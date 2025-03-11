//
//  HomeScreen.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import SwiftUI
import PhotosUI

// StarShape struct for managing star properties



// HomeScreen view
struct HomeScreen: View {
    @State private var animateHomeScreen: Bool = false
    @EnvironmentObject private var photoStore: PhotoStore

    var body: some View {
        ZStack {
            Color.lumeoBg
                .ignoresSafeArea()
            
            VStack {
                homeTitle
                
                HStack {
                    LumeoButton(title: "Take Photos") {
                        // Add action here
                    }
                    
                    LumeoButton(title: "Upload Photos") {
                        photoStore.isShowingPhotoPicker = true
                    }
                }
                .offset(y: animateHomeScreen ? 0 : UIScreen.main.bounds.height)
                
            }
            
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
        .onChange(of: photoStore.photoPickerItems, { oldValue, newValue in
            Task {
                try await photoStore.selectPhotos()
                print(newValue.count)
            }
        })
        .photosPicker(isPresented: $photoStore.isShowingPhotoPicker, selection: $photoStore.photoPickerItems, maxSelectionCount: 3)
        .onAppear {
            withAnimation(.snappy(duration: 0.8)) {
                animateHomeScreen = true
            }
        }
    }
}

// Home title extension
extension HomeScreen {
    var homeTitle: some View {
        Text("Welcome to Lumeo Vintage Moments")
            .foregroundStyle(.lumeoButton)
            .multilineTextAlignment(.center)
            .font(.custom("Halu", size: 50)) // Ensure "Halu" OTF is added to project and Info.plist
            .offset(y: animateHomeScreen ? 0 : -UIScreen.main.bounds.height)
    }
}

#Preview {
    HomeScreen()
        .environmentObject(PhotoStore())
}



