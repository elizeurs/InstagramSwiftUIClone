//
//  CommentsView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 21/02/21.
//

import SwiftUI

struct CommentsView: View {
    var body: some View {
      VStack {
        // comment cells
        ScrollView {
          LazyVStack(alignment: .leading, spacing: 24) {
            ForEach(0 ..< 10) { _ in
              CommentCell()
            }
          }
        }.padding(.top)
        
        // input view
      }
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
