//
//  UserCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 11/02/21.
//

import SwiftUI
import KingfisherSwiftUI

struct UserCell: View {
  let user: User
  var body: some View {
    HStack {
      // image
//      Image("batman")
      KFImage(URL(string: user.profileImageUrl))
        .resizable()
        .scaledToFill()
        .frame(width: 48, height: 48)
        .clipShape(Circle())
      
      // VStack -> username, fullname
      VStack(alignment: .leading) {
        Text(user.username)
          .font(.system(size: 14, weight: .semibold))
        
        Text(user.fullname)
          .font(.system(size: 14))
      }
      
      Spacer()
    }
  }
}

//struct UserCell_Previews: PreviewProvider {
//  static var previews: some View {
//    UserCell()
//  }
//}
