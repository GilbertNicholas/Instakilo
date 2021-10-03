//
//  FeedCell.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    
    @ObservedObject var viewModel: FeedCellViewModel
    
    var didLike: Bool { return viewModel.post.didLike ?? false }
    
    init(viewModel: FeedCellViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            // USER INFO
            HStack {
                if let user = viewModel.post.user {
                    NavigationLink(destination: ProfileView(user: user)) {
                        KFImage(URL(string: viewModel.post.ownerImageUrl))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 36, height: 36)
                            .clipped()
                            .cornerRadius(18)
                        
                        Text(viewModel.post.ownerUsername)
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
            } //: HSTACK
            .padding([.leading, .bottom], 8)
            
            // POST IMAGE
            KFImage(URL(string: viewModel.post.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(minWidth: UIScreen.main.bounds.width, maxHeight: 440)
                .clipped()
            
            // ACTION BUTTONS
            HStack(spacing: 10) {
                Button(action: {
                    didLike ? viewModel.unlike() : viewModel.like()
                }, label: {
                    Image(systemName: didLike ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(didLike ? .red : .black)
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                NavigationLink(
                    destination: CommentView(post: viewModel.post),
                    label: {
                        Image(systemName: "bubble.right")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .font(.system(size: 20))
                            .padding(4)
                    }
                )
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
            } //: HSTACK
            .foregroundColor(.black)
            .padding(.leading, 6)
            
            // CAPTION
            Text(viewModel.likeString)
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            
            HStack {
                Text(viewModel.post.ownerUsername)
                    .font(.system(size: 14, weight: .semibold)) + Text(" \(viewModel.post.caption)")
                    .font(.system(size: 15))
            } //: HSTACK
            .padding(.horizontal, 8)
            
            Text(viewModel.timestampString)
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 2)
            
        } //: VSTACK
    }
}

//struct FeedCell_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedCell()
//    }
//}
