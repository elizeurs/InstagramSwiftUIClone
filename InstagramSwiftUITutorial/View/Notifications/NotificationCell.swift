//
//  NotificationCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 11/02/21.
//

import SwiftUI
import KingfisherSwiftUI

struct NotificationCell: View {
  let notification: Notification
  @State private var showPostImage = true
  
  var body: some View {
    
    HStack {
//      Image("batman")
      KFImage(URL(string: notification.profileImageUrl))
        .resizable()
        .scaledToFill()
        .frame(width: 40, height: 40)
        .clipShape(Circle())
      
//      Text("batman").font(.system(size: 14, weight: .semibold)) +
//        Text(" liked one of your posts.")
      Text(notification.username).font(.system(size: 14, weight: .semibold)) +
        Text(notification.type.notificationMessage)
        .font(.system(size: 15))
      
      Spacer()
      
//      if showPostImage {
      if notification.type != .follow {
        Image("batman")
          .resizable()
          .scaledToFill()
          .frame(width: 40, height: 40)
      } else {
        Button(action: {}, label: {
          Text("Follow")
            .padding(.horizontal, 20)
            .padding(.vertical, 8)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .font(.system(size: 14, weight: .semibold))
        })
      }
    }.padding(.horizontal)
  }
}

//struct NotificationCell_Previews: PreviewProvider {
//  static var previews: some View {
//    NotificationCell(notification: Notification)
//  }
//}
