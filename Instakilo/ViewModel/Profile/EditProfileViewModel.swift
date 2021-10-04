//
//  EditProfileViewModel.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 04/10/21.
//

import SwiftUI

class EditProfileViewModel: ObservableObject {
    var user: User
    @Published var didUploadComplete = false
    
    init(user: User) {
        self.user = user
    }
    
    func saveUserData(_ bio: String) {
        guard let uid = user.id else { return }
        COLLECTION_USERS.document(uid).updateData(["bio": bio]) { _ in
            self.user.bio = bio
            self.didUploadComplete = true
        }
    }
}
