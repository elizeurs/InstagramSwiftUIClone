//
//  Comment.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 21/02/21.
//

import FirebaseFirestoreSwift
import Firebase

struct Comment: Identifiable, Decodable {
  @DocumentID var id: String?
  let username: String
  let postOwnerUid: String
  let profileImageUrl: String
  let commentText: String
  let timestamp: Timestamp
  let uid: String
  
  var timestampString: String? {
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
    formatter.maximumUnitCount = 1
    formatter.unitsStyle = .abbreviated
    return  formatter.string(from: timestamp.dateValue(), to: Date()) ?? ""
  }
}
