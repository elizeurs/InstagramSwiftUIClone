//
//  UserListView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 11/02/21.
//

import SwiftUI

struct UserListView: View {
  @ObservedObject var viewModel: SearchViewModel
  
    var body: some View {
      ScrollView {
        LazyVStack {
          ForEach(viewModel.users) { user in
            NavigationLink(
              destination: ProfileView(),
              label: {
                UserCell(user: user)
                  .padding(.leading)
              })
          }
        }
      }
      
    }
}

//struct UserListView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserListView()
//    }
//}
