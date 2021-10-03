//
//  ProfileHeaderView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 12/09/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: viewModel.user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                    .padding(.leading)
                
                Spacer()
                
                HStack(spacing: 8) {
//                    if let stats = viewModel.user.stats {
//                        UserStatView(value: stats.posts, title: "Post")
//                        UserStatView(value: stats.followers, title: "Followers")
//                        UserStatView(value: stats.following, title: "Following")
//                    }
                    
                    UserStatView(value: viewModel.user.stats?.posts ?? 0, title: "Post")
                    UserStatView(value: viewModel.user.stats?.followers ?? 0, title: "Followers")
                    UserStatView(value: viewModel.user.stats?.following ?? 0, title: "Following")
                } //: HSTACK
                .padding(.trailing, 16)
            } //: HSTACK
            
            Text(viewModel.user.fullname)
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            Text("iOS Developer")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()
                
                ProfileActionButtonView(viewModel: viewModel)
                
                Spacer()
            } //: HSTACK
            .padding(.top)
        } //: VSTACK
    }
}

//struct ProfileHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHeaderView()
//    }
//}
