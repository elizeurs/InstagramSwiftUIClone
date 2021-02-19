//
//  FeedView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 10/02/21.
//

import SwiftUI

struct FeedView: View {
  @ObservedObject var viewModel = FeedViewModel()
    var body: some View {
      ScrollView {
        LazyVStack(spacing: 32) {
//          ForEach(0 ..< 10) { _ in
          ForEach(viewModel.posts) { post in
  //          Text("Feed")
//            FeedCell()
            FeedCell(post: post)
          }
        }.padding(.top)
      }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
