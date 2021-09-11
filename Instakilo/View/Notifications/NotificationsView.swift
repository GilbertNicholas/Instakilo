//
//  NotificationsView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 10/09/21.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                ForEach(0 ..< 20) { item in
                    NotificationCell()
                } //: REPEAT 
            } //: LVSTACK
            .padding(.top)
        } //: SCROLL
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
