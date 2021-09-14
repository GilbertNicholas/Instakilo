//
//  InstakiloApp.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 10/09/21.
//

import SwiftUI
import Firebase

@main
struct InstakiloApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
