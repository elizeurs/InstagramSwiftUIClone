//
//  NotificationsView.swift
//  InstagramSwiftUITutorial
//
//  Created by Elizeu RS on 10/02/21.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
//        Text("Notifications")
      ScrollView {
        LazyVStack(spacing: 20) {
          ForEach(0 ..< 20) { _ in
            NotificationCell()
              .padding(.top)
          }
        }
      }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
