//
//  ProfileActionView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 12/02/21.
//

import SwiftUI

struct ProfileActionView: View {
  var isCurrentUser = true
  var isFollowed = true
  
  var body: some View {
    if isCurrentUser {
      // edit profile button
      Button(action: {}, label: {
        Text("Edit Profile")
          .font(.system(size: 15, weight: .semibold))
          .frame(width: 360, height: 32)
          .foregroundColor(.black)
          .overlay(RoundedRectangle(cornerRadius: 3)
                    .stroke(Color.gray, lineWidth: 1)
          )
      })
    } else {
      HStack {
        // follow and message button
        Button(action: {}, label: {
          Text(isFollowed ? "Following" : "Follow")
            .font(.system(size: 15, weight: .semibold))
            .frame(width: 172, height: 32)
            .foregroundColor(isFollowed ? .black : .white)
            .background(isFollowed ? Color.white : Color.blue)
            .overlay(RoundedRectangle(cornerRadius: 3)
                      .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0)
            )
        }).cornerRadius(3)
        
        Button(action: {}, label: {
          Text("Message")
            .font(.system(size: 15, weight: .semibold))
            .frame(width: 172, height: 32)
            .foregroundColor(.black)
            .overlay(RoundedRectangle(cornerRadius: 3)
                      .stroke(Color.gray, lineWidth: 1)
            )
        })
      }
    }
  }
}

struct ProfileActionView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileActionView()
  }
}
