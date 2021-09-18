//
//  ProfileHeaderView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 12/09/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                    .padding(.leading)
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 1, title: "Post")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 3, title: "Following")
                } //: HSTACK
                .padding(.trailing, 16)
            } //: HSTACK
            
            Text(user.fullname)
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            Text("iOS Developer")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()
                
                ProfileActionButtonView(isCurrentUser: user.isCurrentUser)
                
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
