//
//  FeedCellViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 20/02/21.
//

import SwiftUI

class FeedCellViewModel: ObservableObject {
  @Published var post: Post
  
  init(post: Post) {
    self.post = post
  }
  
  func like() {
    print("Like post")
  }
  
  func unlike() {
    print("Unlike post")
  }
  
  func checkIfUserLikedPost() {
    
  }
}
