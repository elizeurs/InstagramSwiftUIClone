//
//  FeedCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 10/02/21.
//

import SwiftUI
import KingfisherSwiftUI

struct FeedCell: View {
//  let viewModel.post: Post
  @ObservedObject var viewModel: FeedCellViewModel
  
  var didLike: Bool { return viewModel.post.didLike ?? false}
  
  init(viewModel: FeedCellViewModel) {
    self.viewModel = viewModel
  }

  
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        // user info
//        Image("batman")
//        KFImage(URL(string: post.ownerImageUrl))
        KFImage(URL(string: viewModel.post.ownerImageUrl))

          .resizable()
          .scaledToFill()
          .frame(width: 36, height: 36)
          .clipped()
          .cornerRadius(18)
        
//        Text("joker")
//        Text(post.ownerUsername)
          Text(viewModel.post.ownerUsername)

          .font(.system(size: 14, weight: .semibold))
      }
      .padding([.leading, .bottom], 8)
      
      // post image
//      Image("batman")
//      KFImage(URL(string: post.imageUrl))
        KFImage(URL(string: viewModel.post.imageUrl))

        .resizable()
        .scaledToFill()
        .frame(maxHeight: 440)
        .clipped()
      
      // action buttons
      HStack(spacing: 16) {
        Button(action: {
          didLike ? viewModel.unlike() : viewModel.like()
        }, label: {
          Image(systemName: didLike ? "heart.fill" : "heart")
            .resizable()
            .scaledToFill()
            .foregroundColor(didLike ? .red : .black)
            .frame(width: 20, height: 20)
            .font(.system(size: 20))
            .padding(4)
        })
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
          Image(systemName: "bubble.right")
            .resizable()
            .scaledToFill()
            .frame(width: 20, height: 20)
            .font(.system(size: 20))
            .padding(4)
        })
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
          Image(systemName: "paperplane")
            .resizable()
            .scaledToFill()
            .frame(width: 20, height: 20)
            .font(.system(size: 20))
            .padding(4)
        })
      }
      .padding(.leading, 4)
      .foregroundColor(.black)
      
      // caption
      
//      Text("3 likes")
//      Text("\(viewModel.post.likes) likes")
      Text(viewModel.likeString)
        .font(.system(size: 14, weight: .semibold))
        .padding(.leading, 8)
        .padding(.bottom, 2)
      
      HStack {
//        Text("batman").font(.system(size: 14, weight: .semibold)) +
//        Text(post.ownerUsername).font(.system(size: 14, weight: .semibold)) +
          Text(viewModel.post.ownerUsername).font(.system(size: 14, weight: .semibold)) +
//          Text(" All men have limits. They learn what they are and learn not to exceed them. I ignore mine.")
//          Text(" \(post.caption)")
            Text(" \(viewModel.post.caption)")
              .font(.system(size: 15))
      }.padding(.horizontal, 8)
      
      Text("2d")
        .font(.system(size: 14))
        .foregroundColor(.gray)
        .padding(.leading, 8)
        .padding(.top, -2)
    }
  }
}

//struct FeedCell_Previews: PreviewProvider {
//  static var previews: some View {
//    FeedCell()
//  }
//}
