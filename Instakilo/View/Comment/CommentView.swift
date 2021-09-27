//
//  CommentView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 27/09/21.
//

import SwiftUI

struct CommentView: View {
    
    @State var commentText = ""
    @ObservedObject var viewModel: CommentViewModel
    
    init(post: Post) {
        self.viewModel = CommentViewModel(post: post)
    }
    
    var body: some View {
        VStack {
            // COMMENT CELLS
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 24) {
                    ForEach(0 ..< 10) { item in
                        CommentCell()
                    }
                }
                .padding(.vertical, 24)
            }
            
            // INPUT VIEW
            CustomInputView(inputText: $commentText, action: uploadComment)
        } //: VSTACK
    }
    
    func uploadComment() {
        viewModel.uploadComment(commentText: commentText)
        commentText = ""
    }
}

//struct CommentView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommentView()
//    }
//}
