//
//  Extensions.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 11/02/21.
//

import UIKit

extension UIApplication {
  func endEditing() {
    sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
