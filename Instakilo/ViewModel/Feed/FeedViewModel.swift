//
//  FeedViewModel.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 25/09/21.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    
    @Published var post = [Post]()
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        COLLECTION_POSTS.getDocuments { snapshot, _ in
            guard let postsData = snapshot?.documents else { return }
            
            self.post = postsData.compactMap({ try? $0.data(as: Post.self) })
        }
    }
}
