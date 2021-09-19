//
//  ProfileViewModel.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 19/09/21.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
    
    func follow() {
        guard let uid = user.id else { return }
        
        UserService.follow(uid: uid) { _ in
            self.user.isFollowed = true
        }
    }
    
    func unfollow() {
        
    }
    
    func checkIfUserFollowed() {
        
    }
}
