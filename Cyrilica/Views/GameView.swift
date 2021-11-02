//
//  HomeView.swift
//  Cyrilica
//
//  Created by Felix on 01.11.21.
//

import SwiftUI

struct GameView: View {
  var body: some View {
    VStack {
      DisplayView()
      Spacer(minLength: 20)
      PadView()
    }.padding(.horizontal, 5)
  }
}

struct GameView_Previews: PreviewProvider {
  static var previews: some View {
    GameView()
    GameView().preferredColorScheme(.dark)
  }
}
