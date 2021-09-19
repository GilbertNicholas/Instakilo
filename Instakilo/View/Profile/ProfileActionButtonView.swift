//
//  ProfileActionButtonView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 12/09/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    var isFollowed: Bool { return viewModel.user.isFollowed ?? false }
    
    var body: some View {
        if viewModel.user.isCurrentUser {
            // EDIT PROFILE BUTTON
            Button(action: {}, label: {
                Text("Edit Profile")
                    .font(.system(size: 15, weight: .semibold))
                    .frame(width: 360, height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }) //: BUTTON
        } else {
            // FOLLOW & MESSAGE BUTTON
            HStack {
                Button(action: {
                    isFollowed ? viewModel.unfollow() : viewModel.follow()
                }, label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 175, height: 32)
                        .foregroundColor(isFollowed ? .blue : .white)
                        .background(isFollowed ? Color.white : Color.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0)
                        )
                }) //: BUTTON
                .cornerRadius(3)
                
                Button(action: {}, label: {
                    Text("Message")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 175, height: 32)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }) //: BUTTON
                .cornerRadius(3)
            } //: HSTACK
        }
    }
}

//struct ProfileActionButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileActionButtonView()
//    }
//}
