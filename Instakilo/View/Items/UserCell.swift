//
//  UserCell.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    
    let user: User
    
    var body: some View {
        HStack {
            // USER IMAGE
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // USER INFO
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            } //: VSTACK
            
            Spacer()
        } //: HSTACK
        .accentColor(.black)
    }
}

//struct UserCell_Previews: PreviewProvider {
//    static var previews: some View {
//        UserCell()
//    }
//}
