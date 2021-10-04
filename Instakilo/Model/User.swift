//
//  User.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 18/09/21.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var isFollowed: Bool? = false
    var stats: UserStats?
    var bio: String?
    
    var isCurrentUser: Bool { return AuthViewModel.shared.userSession?.uid == id }
}

struct UserStats: Decodable {
    var following: Int
    var posts: Int
    var followers: Int
}
