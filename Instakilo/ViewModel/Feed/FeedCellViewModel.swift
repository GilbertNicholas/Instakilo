//
//  FeedCellViewModel.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 26/09/21.
//

import SwiftUI

class FeedCellViewModel: ObservableObject {
    @Published var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    func like() {
        print("LIKE")
    }
    
    func unlike() {
        print("UNLIKE")
    }
    
    func checkIfUserLikedPost() {
        
    }
}
