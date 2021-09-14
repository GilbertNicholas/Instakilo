//
//  RegistrationView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 13/09/21.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullname = ""
    @State private var username = ""
    @State private var password = ""
    @Environment(\.presentationMode) var mode
    
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State var imagePickerPresented = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack {
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
                            .padding()
                            .padding([.top, .bottom], 24)
                    } else {
                        Button(action: {
                            imagePickerPresented.toggle()
                        }, label: {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .foregroundColor(.white)
                        })
                        .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                            ImagePicker(image: $selectedImage)
                        })
                        .padding()
                        .padding([.top, .bottom], 24)
                    }
                } //: ZSTACK
                
                VStack(spacing: 20) {
                    // EMAIL FIELD
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    // USERNAME FIELD
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    // FULLNAME FIELD
                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
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
                
                // SIGN UP
                Button(action: {
                    viewModel.register(withEmail: email, password: password)
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .clipShape(Capsule())
                        .padding()
                }) //: BUTTON
                
                Spacer()
                
                // GO TO SIGN IN
                Button(action: {
                    mode.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    } //: HSTACK
                    .foregroundColor(.white)
                })
                .padding(.bottom, 16)
            } //: VSTACK
        } //: ZSTACK
    }
}

extension RegistrationView {
    func loadImage() {
        guard let selectedImage  = selectedImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
