//
//  SearchView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 10/02/21.
//

import SwiftUI

struct SearchView: View {
  @State var searchText = ""
  
  var body: some View {
    
    ScrollView {
      //        Text("Search")
      
      // search bar
      SearchBar(text: $searchText)
        .padding()
      
      // grid view/user list view
//      PostGridView()
      UserListView()
      
      
    }
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
