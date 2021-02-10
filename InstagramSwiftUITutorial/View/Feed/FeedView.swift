//
//  FeedView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 10/02/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
      ScrollView {
        ForEach(0 ..< 10) { _ in
//          Text("Feed")
          FeedCell()
        }
      }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
