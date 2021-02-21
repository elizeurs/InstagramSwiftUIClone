//
//  Post.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 18/02/21.
//

import FirebaseFirestoreSwift
import Firebase

struct Post: Identifiable, Decodable {
  @DocumentID var id: String?
  let ownerUid: String
  let ownerUsername: String
  let caption: String
//  let likes: Int (it needs to be a var, 'cause it can change)
  var likes: Int
  let imageUrl: String
  let timestamp: Timestamp
  let ownerImageUrl: String
  
  var didLike: Bool? = false
}
