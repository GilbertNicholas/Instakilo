//
//  EditProfileVIew.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 04/10/21.
//

import SwiftUI

struct EditProfileVIew: View {
    
    @State private var bioText = ""
    @ObservedObject private var viewModel: EditProfileViewModel
    @Environment(\.presentationMode) var mode
    
    init(viewModel: EditProfileViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                } //: BUTTON
                
                Spacer()
                
                Button {
                    viewModel.saveUserData(bioText)
                } label: {
                    Text("Done")
                        .bold()
                } //: BUTTON
            } //: HSTACK
            .padding()
            
            TextArea(text: $bioText, placeholder: "Add your bio..")
                .frame(width: 370, height: 200)
                .padding(.top)
            
            Spacer()
        } //: VSTACK
        .onReceive(viewModel.$didUploadComplete) { _ in
            self.mode.wrappedValue.dismiss()
        }
    }
}

//struct EditProfileVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        EditProfileVIew()
//    }
//}
