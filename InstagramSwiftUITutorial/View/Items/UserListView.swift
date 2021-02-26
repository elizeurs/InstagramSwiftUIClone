//
//  UserListView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 11/02/21.
//

import SwiftUI

struct UserListView: View {
  @ObservedObject var viewModel: SearchViewModel
  @Binding var  searchText: String
  
  var users: [User] {
    return searchText.isEmpty ? viewModel.users : viewModel.filteredUsers(searchText)
  }
  
    var body: some View {
      ScrollView {
        LazyVStack {
          ForEach(users) { user in
            NavigationLink(
              destination: LazyView(ProfileView(user: user)),
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
