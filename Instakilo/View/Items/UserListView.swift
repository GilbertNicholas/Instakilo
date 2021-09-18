//
//  UserListView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI

struct UserListView: View {
    
    @ObservedObject var viewModel: SearchViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(viewModel.users) { user in
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                            UserCell(user: user)
                                .padding(.leading)
                        }
                    ) //: NAVLINK
                } //: LOOP
            } //: LVSTACK
        } //: SCROLL
    }
}

//struct UserListView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserListView()
//    }
//}
