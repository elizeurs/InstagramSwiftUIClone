//
//  ProfileView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 10/02/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
//        Text("Profile")
      ScrollView {
        VStack(spacing: 32) {
          ProfileHeaderView()
          
          PostGridView()
        }.padding(.top)
      }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
