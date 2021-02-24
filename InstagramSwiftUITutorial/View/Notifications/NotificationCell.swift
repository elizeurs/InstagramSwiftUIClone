//
//  NotificationCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 11/02/21.
//

import SwiftUI
import KingfisherSwiftUI

struct NotificationCell: View {
//  let notification: Notification
  @ObservedObject var viewModel: NotificationCellViewModel
  
  var isFollowed: Bool { return viewModel.notification.isFollowed ?? false }
  
  init(viewModel: NotificationCellViewModel) {
    self.viewModel = viewModel
  }

  @State private var showPostImage = true
  
  var body: some View {
    
    HStack {
//      Image("batman")
      if let user = viewModel.notification.user {
        NavigationLink(destination: ProfileView(user: user)) {
          KFImage(URL(string: viewModel.notification.profileImageUrl))
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
          
    //      Text("batman").font(.system(size: 14, weight: .semibold)) +
    //        Text(" liked one of your posts.")
          Text(viewModel.notification.username).font(.system(size: 14, weight: .semibold)) +
            Text(viewModel.notification.type.notificationMessage)
            .font(.system(size: 15))
        }
      }
      
      Spacer()
      
//      if showPostImage {
      if viewModel.notification.type != .follow {
//        Image("batman")
//        .resizable()
//        .scaledToFill()
//        .frame(width: 40, height: 40)
        if let post = viewModel.notification.post {
          NavigationLink(destination: FeedCell(viewModel: FeedCellViewModel(post: post))) {
            KFImage(URL(string: post.imageUrl))
              .resizable()
              .scaledToFill()
              .frame(width: 40, height: 40)
              .clipped()
          }
        }
      } else {
        Button(action: {
          isFollowed ? viewModel.unfollow() : viewModel.follow()
        }, label: {
//          Text("Follow")
//            .padding(.horizontal, 20)
//            .padding(.vertical, 8)
//            .background(Color(.systemBlue))
//            .foregroundColor(.white)
//            .clipShape(Capsule())
//            .font(.system(size: 14, weight: .semibold))
          Text(isFollowed ? "Following" : "Follow")
            .font(.system(size: 15, weight: .semibold))
            .frame(width: 100, height: 32)
            .foregroundColor(isFollowed ? .black : .white)
            .background(isFollowed ? Color.white : Color.blue)
            .cornerRadius(3)
            .overlay(
              RoundedRectangle(cornerRadius: 3)
                      .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0)
            )
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
