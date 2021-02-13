//
//  LoginView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 13/02/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
      NavigationView {
        ZStack {
          LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
          VStack {
            Image("instagram_logo_white")
              .resizable()
              .scaledToFit()
              .frame(width: 220)
              .foregroundColor(.white)
            
            // email field
            
            // password field
            
            // forgot password
            
            // sign in
            
            // go to sign up
            
            Spacer()
            
          }
        }
      }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
