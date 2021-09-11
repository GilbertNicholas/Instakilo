//
//  UserCell.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            // USER IMAGE
            Image("gilbert1")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // USER INFO
            VStack(alignment: .leading) {
                Text("oldskool")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Gilbert Nicholas")
                    .font(.system(size: 14))
            } //: VSTACK
            
            Spacer()
        } //: HSTACK
        .accentColor(.black)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
