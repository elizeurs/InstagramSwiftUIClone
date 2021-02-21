//
//  ProfileView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 10/02/21.
//

import SwiftUI

struct ProfileView: View {
  let user: User
  @ObservedObject var viewModel: ProfileViewModel
  
  init(user: User) {
    self.user = user
    self.viewModel = ProfileViewModel(user: user)
  }
  
  var body: some View {
    //        Text("Profile")
    ScrollView {
      VStack(spacing: 32) {
        ProfileHeaderView(viewModel: viewModel)
        
        PostGridView(config: .profile(user.id ?? ""))
      }.padding(.top)
    }
  }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
