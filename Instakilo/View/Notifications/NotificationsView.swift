//
//  NotificationsView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 10/09/21.
//

import SwiftUI

struct NotificationsView: View {
    
    @ObservedObject var viewModel = NotificationViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                ForEach(viewModel.notifications) { notification in
                    NotificationCell(viewModel: NotificationCellViewModel(notification: notification))
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
