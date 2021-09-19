//
//  UserService.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 20/09/21.
//

import Firebase

struct UserService {
    static func follow(uid: String, completion: ((Error?) -> Void)?) {
        guard let currentUid = AuthViewModel.shared.userSession?.uid else { return }
        
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(uid).setData([:]) { _ in
            COLLECTION_FOLLOWERS.document(uid).collection("user-followers").document(currentUid).setData([:], completion: completion)
        }
    }
    
    static func unfollow() {
        
    }
    
    static func checkIfUserIsFollowed() {
        
    }
}
