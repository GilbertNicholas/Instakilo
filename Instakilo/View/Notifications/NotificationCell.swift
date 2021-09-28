//
//  NotificationCell.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI
import Kingfisher

struct NotificationCell: View {
    
    let notification: Notification
    @State private var isLikePost = true
    
    var body: some View {
        HStack {
            KFImage(URL(string: notification.profileImageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text(notification.username)
                .font(.system(size: 14, weight: .semibold)) + Text(notification.type.notificationMessage)
                .font(.system(size: 15))
            
            Spacer()
            
            if notification.type != .follow {
                Image("gilbert1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button(action: {
                    
                }, label: {
                    Text("Follow")
                        .frame(width: 56)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .font(.system(size: 14, weight: .semibold))
                })
            }
            
        } //: HSTACK
        .padding(.horizontal)
    }
}

//struct NotificationCell_Previews: PreviewProvider {
//    static var previews: some View {
//        NotificationCell()
//    }
//}
