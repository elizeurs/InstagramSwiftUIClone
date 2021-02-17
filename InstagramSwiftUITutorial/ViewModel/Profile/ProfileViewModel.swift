//
//  ProfileViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 16/02/21.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
  let user: User
  
  init(user: User) {
    self.user = user
  }
  
  func follow() {
    print("DEBUG: Follow user..")
  }
  
  func unfollow() {
    print("DEBUG: Unfollow user..")
  }
  
  func checkIfUserIsFollowed() {
    
  }
}
