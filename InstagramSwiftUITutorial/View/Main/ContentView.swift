//
//  ContentView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 06/02/21.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var viewModel: AuthViewModel
  
    var body: some View {
      Group {
        
        // if not logged in, show login
        if viewModel.userSession == nil {
          LoginView()
          
          //else, show main interface
        } else {
          MainTabView()
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
