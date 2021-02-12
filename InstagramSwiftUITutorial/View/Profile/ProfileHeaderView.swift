//
//  ProfileHeaderView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 12/02/21.
//

import SwiftUI

struct ProfileHeaderView: View {
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Image("batman")
          .resizable()
          .scaledToFill()
          .frame(width: 80, height: 80)
          .clipShape(Circle())
          .padding(.leading)
        
        Spacer()
        
        HStack(spacing: 16) {
          UserStatView()
          UserStatView()
          UserStatView()
        }.padding(.trailing, 32)
      }
      
      Text("Bruce Wayne")
        .font(.system(size: 15, weight: .semibold))
        .padding([.leading, .top])
      
      Text("Gotham's Dark Knight || Billionaire")
        .font(.system(size: 15))
        .padding(.leading)
        .padding(.top, 1)
      
      HStack {
        Spacer()
        Button(action: {}, label: {
          Text("Edit Profile")
            .font(.system(size: 15, weight: .semibold))
            .frame(width: 360, height: 32)
            .overlay(RoundedRectangle(cornerRadius: 3)
                      .stroke(Color.gray, lineWidth: 1)
            )
        })
        
        Spacer()
      }.padding(.top)
    }
  }
}

struct UserStatView: View{
  var body: some View {
    VStack {
      Text("2")
        .font(.system(size: 15, weight: .semibold))
      
      Text("followers")
        .font(.system(size: 15))
    }.frame(width: 80, alignment: .center)
  }
}

struct ProfileHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHeaderView()
  }
}
