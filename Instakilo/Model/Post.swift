//
//  Post.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 25/09/21.
//

import FirebaseFirestoreSwift
import Firebase

struct Post: Identifiable, Decodable {
    @DocumentID var id: String?
    let ownerUid: String
    let ownerUsername: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    let ownerImageUrl: String
    
    var didLike: Bool? = false
}