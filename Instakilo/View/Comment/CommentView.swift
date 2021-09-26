//
//  CommentView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 27/09/21.
//

import SwiftUI

struct CommentView: View {
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
        } //: VSTACK
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
