//
//  RegistrationView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 13/02/21.
//

import SwiftUI

struct RegistrationView: View {
  @State private var email = ""
  @State private var fullname = ""
  @State private var username = ""
  @State private var password = ""
  @State private var selectedImage: UIImage?
  @State private var image: Image?
  @State var imagePickerPresented = false
  @Environment(\.presentationMode) var mode
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
          } else {
            Button(action: { imagePickerPresented.toggle() }, label: {
              Image("plus_photo")
                .renderingMode(.template)
                .resizable()
                .scaledToFill()
                .frame(width: 140, height: 140)
                .foregroundColor(.white)
            }).sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
              ImagePicker(image: $selectedImage)
            })
          }
        }
        
        // email field
        VStack(spacing: 20) {
          CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(.horizontal, 32)
          
          // username field
          CustomTextField(text: $email, placeholder: Text("Username"), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(.horizontal, 32)
          
          // fullname field
          CustomTextField(text: $email, placeholder: Text("Full Name"), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(.horizontal, 32)
          
          // password field
          CustomSecureField(text: $password, placeholder: Text("Password"))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(.horizontal, 32)
        }
        
        // sign up
        Button(action: {
          viewModel.register()
        },
               label: {
                Text("Sign Up")
                  .font(.headline)
                  .frame(width: 360, height: 50)
                  .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                  .foregroundColor(.white)
                  .clipShape(Capsule())
                  .padding()
               })
        
        Spacer()
        
        // go to sign in
        Button(action: { mode.wrappedValue.dismiss() }, label: {
          HStack {
            Text("Already have an account?")
              .font(.system(size: 14))
            
            Text("Sign In")
              .font(.system(size: 14, weight: .semibold))
          }.foregroundColor(.white)
        })
      }
    }
  }
}



extension RegistrationView {
  func loadImage() {
    guard let selectedImage = selectedImage else { return }
    image = Image(uiImage: selectedImage)
  }
}

struct RegistrationView_Previews: PreviewProvider {
  static var previews: some View {
    RegistrationView()
  }
}

