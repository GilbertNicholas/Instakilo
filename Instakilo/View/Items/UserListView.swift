//
//  UserListView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0 ..< 20) { item in
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                            UserCell()
                                .padding(.leading)
                        }
                    ) //: NAVLINK
                } //: LOOP
            } //: LVSTACK
        } //: SCROLL
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
