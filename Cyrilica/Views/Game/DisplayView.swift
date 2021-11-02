//
//  DisplayView.swift
//  Cyrilica
//
//  Created by Felix on 01.11.21.
//

import SwiftUI

struct DisplayView: View {
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    VStack {
      ZStack {
        VStack {
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color.yellow, lineWidth: 5)
        }
        Text("Ф1").font(.system(size: 250)).shadow(
          color: colorScheme == .dark ?  Color.white : Color.black,
          radius: 5)
          .padding()
      }
      .padding(.top, 20.0)
    }
  }
}

struct DisplayView_Previews: PreviewProvider {
  static var previews: some View {
    DisplayView()
    DisplayView().preferredColorScheme(.dark)
  }
}
