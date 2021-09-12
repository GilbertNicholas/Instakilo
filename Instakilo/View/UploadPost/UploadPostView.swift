//
//  UploadPostView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 10/09/21.
//

import SwiftUI

struct UploadPostView: View {
    
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    @State var imagePickerPresented = false
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button(action: {
                    imagePickerPresented.toggle()
                }, label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 56)
                }) //: BUTTON
                .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                    ImagePicker(image: $selectedImage)
                })
                
            } else if let image = postImage {
                HStack(alignment: .top) {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                
                    TextField("Enter your caption...", text: $captionText)
                } //: HSTACK
                .padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }) //: BUTTON
                .padding()
            }
            
            Spacer()
        } //: VSTACK
    }
}

extension UploadPostView {
    func loadImage() {
        guard let selectedImage  = selectedImage else { return }
        postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
