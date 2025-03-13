//
//  Router.swift
//  Lumeo
//
//  Created by Elvis Rexha on 13/03/2025.
//

import Foundation
import SwiftData
import SwiftUI

@Observable
class Router {
    var router = NavigationPath()
    
    func navigateToHomeScreen() {
        router.append(RouteType.home)
    }
    
    func navigateToAddNoteScreen() {
        router.append(RouteType.addNoteScreen)
    }
    
    func popToRoot() {
        router.removeLast(router.count)
    }
}




enum RouteType: Identifiable {
    
    case home
    case addNoteScreen
    
    var id: Self {
        self
    }
    
}
