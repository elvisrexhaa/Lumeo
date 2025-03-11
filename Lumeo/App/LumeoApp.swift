//
//  LumeoApp.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import SwiftUI

@main
struct LumeoApp: App {
    
    @StateObject private var photoStore = PhotoStore()
    
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environmentObject(photoStore)
        }
        
    }
}
