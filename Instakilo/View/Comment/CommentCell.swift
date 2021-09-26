//
//  CommentCell.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 27/09/21.
//

import SwiftUI

struct CommentCell: View {
    var body: some View {
        HStack {
            Image("gilbert1")
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
            
            Text("Gilbert").font(.system(size: 14, weight: .semibold)) + Text(" some test comment").font(.system(size: 14))
            
            Text("2m")
                .foregroundColor(.gray)
                .font(.system(size: 12))
                .padding(.trailing)
        } //: HSTACK
        .padding(.horizontal)
    }
}

struct CommentCell_Previews: PreviewProvider {
    static var previews: some View {
        CommentCell()
    }
}
