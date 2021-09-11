//
//  FeedCell.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            // USER INFO
            HStack {
                Image("gilbert1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("Joker")
                    .font(.system(size: 14, weight: .semibold))
            } //: HSTACK
            .padding([.leading, .bottom], 8)
            
            // POST IMAGE
            Image("stock1")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 440)
                .clipped()
            
            // ACTION BUTTONS
            HStack(spacing: 10) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
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
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            
            HStack {
                Text("gilbert1")
                    .font(.system(size: 14, weight: .semibold)) + Text(" All men have limits. They learn what they are and learn not to exceed them. I ignored mine.")
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 2)
            
        } //: VSTACK
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
