//
//  CommentsView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 21/02/21.
//

import SwiftUI

struct CommentsView: View {
  @State var commentText = ""
  @ObservedObject var viewModel: CommentViewModel
  
  init(post: Post) {
    self.viewModel = CommentViewModel(post: post)
  }
  
    var body: some View {
      VStack {
        // comment cells
        ScrollView {
          LazyVStack(alignment: .leading, spacing: 24) {
//            ForEach(0 ..< 10) { _ in
            ForEach(viewModel.comments) { comment in
//              CommentCell()
              CommentCell(comment: comment)
            }
          }
        }.padding(.top)
        
        // input view
        CustomInputView(inputText: $commentText, action: uploadComment)
      }
    }
  
  func uploadComment() {
    viewModel.uploadComment(commentText: commentText)
    commentText = ""
  }
}

//struct CommentsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CommentsView()
//    }
//}
