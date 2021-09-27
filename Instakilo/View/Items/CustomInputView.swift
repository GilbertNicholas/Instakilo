//
//  CustomInputView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 27/09/21.
//

import SwiftUI

struct CustomInputView: View {
    
    @Binding var inputText: String
    
    var action: () -> Void
    
    var body: some View {
        VStack {
            // DIVIDER
            Rectangle()
                .foregroundColor(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
                .padding(.bottom, 2)
            
            // TEXTFIELD + SEND BTN
            HStack {
                TextField("Comment...", text: $inputText)
                    .textFieldStyle(PlainTextFieldStyle())
                    .frame(minHeight: 28)
                
                Button(action: action) {
                    Text("Send")
                        .bold()
                }
            } //: HSTACK
        } //: VSTACK
        .padding(.bottom, 8)
        .padding(.horizontal)
    }
}

//struct CustomInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomInputView(inputText: .constant(""))
//    }
//}
