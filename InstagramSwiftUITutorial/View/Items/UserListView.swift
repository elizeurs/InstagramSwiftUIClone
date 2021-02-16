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
          ForEach(viewModel.users) { _ in
            NavigationLink(
              destination: ProfileView(),
              label: {
                UserCell()
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
