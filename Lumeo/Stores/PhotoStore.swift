//
//  PhotoStore.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import SwiftUI
import PhotosUI


@MainActor
class PhotoStore: ObservableObject {
    // Published Properties for photos selection
    @Published var images: [UIImage] = []
    @Published var photoPickerItems: [PhotosPickerItem] = []
    @Published var isShowingPhotoPicker: Bool = false
    
    func selectPhotos() async throws {
//        guard let photoPickerItems else { return }
        var storedImages: [UIImage] = []
        
        for item in photoPickerItems {
            do {
                let imageData = try await item.loadTransferable(type: Data.self)
                if let imageData, let image = UIImage(data: imageData) {
                    storedImages.append(image)
                }
            } catch {
                print("Could not get image data: \(error.localizedDescription)")
            }
        }
        
        DispatchQueue.main.async {
            withAnimation(.snappy(duration: 0.25)) {
                self.images = storedImages
            }
        }
    }
    
    
}
