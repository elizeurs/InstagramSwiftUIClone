//
//  ProfileHeaderView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 12/02/21.
//

import SwiftUI
import KingfisherSwiftUI

struct ProfileHeaderView: View {
  @ObservedObject var viewModel: ProfileViewModel
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
//        Image("batman")
        KFImage(URL(string: viewModel.user.profileImageUrl))
          .resizable()
          .scaledToFill()
          .frame(width: 80, height: 80)
          .clipShape(Circle())
          .padding(.leading)
        
        Spacer()
        
        HStack(spacing: 16) {
          UserStatView(value: 1, title: "Post")
          UserStatView(value: 2, title: "Followers")
          UserStatView(value: 4, title: "Following")
        }.padding(.trailing, 32)
      }
      
//      Text("Bruce Wayne")
      Text(viewModel.user.fullname)
        .font(.system(size: 15, weight: .semibold))
        .padding([.leading, .top])
      
      Text("Gotham's Dark Knight || Billionaire")
        .font(.system(size: 15))
        .padding(.leading)
        .padding(.top, 1)
      
      HStack {
        Spacer()
        
        ProfileActionButtonView(viewModel: viewModel)
        
        Spacer()
      }.padding(.top)
    }
  }
}

//struct ProfileHeaderView_Previews: PreviewProvider {
//  static var previews: some View {
//    ProfileHeaderView()
//  }
//}
