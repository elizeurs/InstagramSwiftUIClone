//
//  InstagramSwiftUITutorialApp.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 06/02/21.
//

import SwiftUI
import Firebase

@main
struct InstagramSwiftUITutorialApp: App {
  init() {
    FirebaseApp.configure()
  }
  
    var body: some Scene {
        WindowGroup {
//            ContentView()
          LoginView()
        }
    }
}
