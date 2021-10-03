//
//  ResetPasswordView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 13/09/21.
//

import SwiftUI

struct ResetPasswordView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    @Environment(\.presentationMode) var mode
    @Binding private var email: String
    
    init(email: Binding<String>) {
        self._email = email
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image("Instakilo_text_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                
                VStack(spacing: 20) {
                    // EMAIL FIELD
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                } //: VSTACK
                
                // SIGN IN
                Button(action: {
                    viewModel.resetPassword(withEmail: email)
                }, label: {
                    Text("Send Reset Password Link")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .clipShape(Capsule())
                        .padding()
                }) //: BUTTON
                
                Spacer()
            } //: VSTACK
            .padding(.top, -40)
        }
        .onReceive(viewModel.$didSendResetPasswordLink) { _ in
            self.mode.wrappedValue.dismiss()
        }
    }
}

//struct ResetPasswordView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResetPasswordView()
//    }
//}
