//
//  LoginView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 13/09/21.
//

import SwiftUI

struct LoginView: View {
    
     @State private var email = ""
     @State private var password = ""
     @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
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
                        
                        // PASSWORD FIELD
                        CustomSecureField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                    } //: VSTACK
                    
                    // FORGOT PASSWORD
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        }) //: BUTTON
                    } //: HSTACK
                    
                    // SIGN IN
                    Button(action: {
                        viewModel.login()
                    }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(Capsule())
                            .padding()
                    }) //: BUTTON
                    
                    Spacer()
                    
                    // GO TO SIGN UP
                    NavigationLink(
                        destination: RegistrationView().navigationBarHidden(true),
                        label: {
                            HStack {
                                Text("Don't have an account?")
                                    .font(.system(size: 14))
                                
                                Text("Sign Up")
                                    .font(.system(size: 14, weight: .semibold))
                            } //: HSTACK
                            .foregroundColor(.white)
                        }
                    ) //: NAVLINK
                    .padding(.bottom, 16)
                } //: VSTACK
                .padding(.top, -40)
            } //: ZSTACK
        } //: NAV
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
