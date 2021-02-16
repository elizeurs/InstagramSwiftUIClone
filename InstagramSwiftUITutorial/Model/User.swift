//
//  User.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 15/02/21.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
  let username: String
  let email: String
  let profileImageUrl: String
  let fullname: String
  @DocumentID var id: String?
}
