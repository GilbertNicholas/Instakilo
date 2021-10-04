//
//  EditProfileVIew.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 04/10/21.
//

import SwiftUI

struct EditProfileVIew: View {
    @State private var bioText: String
    @ObservedObject private var viewModel: EditProfileViewModel
    @Binding var user: User
    @Environment(\.presentationMode) var mode
    
    init(user: Binding<User>) {
        self._user = user
        self.viewModel = EditProfileViewModel(user: self._user.wrappedValue)
        self._bioText = State(initialValue: _user.wrappedValue.bio ?? "")
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
        .onReceive(viewModel.$didUploadComplete) { completed in
            if completed {
                self.user.bio = viewModel.user.bio
                self.mode.wrappedValue.dismiss()
            }
        }
    }
}

//struct EditProfileVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        EditProfileVIew()
//    }
//}
