//
//  NewGameView.swift
//  Cyrilica
//
//  Created by Felix on 01.11.21.
//

import SwiftUI

struct NewGameView: View {
  @State private var newGame = false
  var body: some View {
    VStack {
      NavigationLink(destination: HomeView(), isActive: $newGame) {
        Button(action: {
          self.newGame = true
        }) {
          Text("Start New Game")
            .foregroundColor(Color.black)
            .frame(maxWidth: abs(.infinity), maxHeight: 40)
            .background(Color.yellow)
            .cornerRadius(10)
            .overlay(
              RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
            )
        }
      }
    }
  }
}


struct NewGameView_Previews: PreviewProvider {
  static var previews: some View {
    NewGameView()
  }
}
