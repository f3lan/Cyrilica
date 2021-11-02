//
//  LogoView.swift
//  Cyrilica
//
//  Created by Felix on 01.11.21.
//

import SwiftUI

struct LogoView: View {
  var body: some View {
    VStack {
      Text("Ф").font(.system(size: 250)).shadow(color: Color.white, radius: 10)
        .padding()
      Text("Cyrilica").font(.system(size: 35))
    }
  }
}

struct LogoView_Previews: PreviewProvider {
  static var previews: some View {
    LogoView()
  }
}
