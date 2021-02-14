//
//  AuthViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 14/02/21.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
  @Published var userSession: FirebaseAuth.User?
  
  init() {
    userSession = Auth.auth().currentUser
  }
  
  func login() {
    print("Login")
  }
  
  func register() {
    print("Register")

  }
  
  func signout() {

  }
  
  func resetPassword() {
    
  }
  
  func fetchUser() {

  }
}
