//
//  NotificationCell.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var isLikePost = true
    
    var body: some View {
        HStack {
            Image("gilbert1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("gilbert1")
                .font(.system(size: 14, weight: .semibold)) + Text(" liked one of your posts.")
                .font(.system(size: 15))
            
            Spacer()
            
            if isLikePost {
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

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
