//
//  HomeScreen.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import SwiftUI
import PhotosUI

// HomeScreen view
struct HomeScreen: View {
    @State private var animateHomeScreen: Bool = false
    @EnvironmentObject private var photoStore: PhotoStore

    var body: some View {
        NavigationStack {
            ZStack {
                LumeoBackground()
                
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
            }
            .safeAreaInset(edge: .bottom, content: {
                if photoStore.images.count == 3 {
                    LumeoButton(title: "Continue") {
                        
                    }
                    .transition(.move(edge: .bottom))
                    
                    
                }
            })
            .onChange(of: photoStore.photoPickerItems, { oldValue, newValue in
                Task {
                    if photoStore.photoPickerItems.count == 3 {
                        try await photoStore.selectPhotos()
                        print(newValue.count)
                    }
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



