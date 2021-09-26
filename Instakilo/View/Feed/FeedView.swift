//
//  FeedView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 10/09/21.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var viewModel = FeedViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                ForEach(viewModel.post) { post in
                    FeedCell(viewModel: FeedCellViewModel(post: post))
                } //: LOOP
            } //: LAZYVSTACK
            .padding([.top, .bottom], 16)
        } //: SCROLL
    }
}

//struct FeedView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedView()
//    }
//}
