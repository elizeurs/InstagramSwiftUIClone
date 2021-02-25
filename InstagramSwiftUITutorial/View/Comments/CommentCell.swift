//
//  CommentCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 21/02/21.
//

import SwiftUI
import KingfisherSwiftUI

struct CommentCell: View {
  let comment: Comment
  
    var body: some View {
      HStack {
//        Image("batman")
        KFImage(URL(string: comment.profileImageUrl))
          .resizable()
          .scaledToFill()
          .frame(width: 36, height: 36)
          .clipShape(Circle())
        
//        Text("batman").font(.system(size: 14, weight: .semibold)) +
//          Text(" some test comment for now").font(.system(size: 14))
        Text(comment.username).font(.system(size: 14, weight: .semibold)) +
          Text(" \(comment.commentText)").font(.system(size: 14))
        
        Spacer()
        
//        Text("2m")
          Text(" \(comment.timestampString ?? "")")
          .foregroundColor(.gray)
          .font(.system(size: 12))
          .padding(.trailing)
      }.padding(.horizontal)
    }
}

//struct CommentCell_Previews: PreviewProvider {
//    static var previews: some View {
//        CommentCell()
//    }
//}
