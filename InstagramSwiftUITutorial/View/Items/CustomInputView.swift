//
//  CustomInputView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 21/02/21.
//

import SwiftUI

struct CustomInputView: View {
  @Binding var inputText: String
  
  var action: () -> Void
  
  var body: some View {
    VStack {
      // divider
      Rectangle()
        .foregroundColor(Color(.separator))
        .frame(width: UIScreen.main.bounds.width, height: 0.75)
        .padding(.bottom, 8)
      
      // hstack with send button and text field
      HStack {
        TextField("Comment...", text: $inputText)
          .textFieldStyle(PlainTextFieldStyle())
          .frame(minHeight: 30)
        
        Button(action: action) {
          Text("Send")
            .bold()
            .foregroundColor(.black)
        }
      }
      .padding(.bottom, 8)
      .padding(.horizontal)
    }
  }
}

//struct CustomInputView_Previews: PreviewProvider {
//    static var previews: some View {
//      CustomInputView(inputText: .constant(""))
//    }
//}
