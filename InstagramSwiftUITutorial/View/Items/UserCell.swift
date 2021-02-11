//
//  UserCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 11/02/21.
//

import SwiftUI

struct UserCell: View {
  var body: some View {
    HStack {
      // image
      Image("batman")
        .resizable()
        .scaledToFill()
        .frame(width: 48, height: 48)
        .clipShape(Circle())
      
      // VStack -> username, fullname
      VStack(alignment: .leading) {
        Text("batman")
          .font(.system(size: 14, weight: .semibold))
        
        Text("Bruce Wayne")
          .font(.system(size: 14))
      }
      
      Spacer()
    }
  }
}

struct UserCell_Previews: PreviewProvider {
  static var previews: some View {
    UserCell()
  }
}
