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
  
  static let shared = AuthViewModel()
  
  init() {
    userSession = Auth.auth().currentUser
  }
  
  func login() {
    print("Login")
  }
  
  func register(withEmail email: String, password: String) {
//    print("Register")
//    print(email)
//    print(password)
    Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
      if let error = error {
        print(error.localizedDescription)
        return
      }
      
      guard let user = result?.user else { return }
      self.userSession = user
      print("Successfully registered user...")
    }

  }
  
  func signout() {
    self.userSession = nil
    try? Auth.auth().signOut()
  }
  
  func resetPassword() {
    
  }
  
  func fetchUser() {

  }
}
