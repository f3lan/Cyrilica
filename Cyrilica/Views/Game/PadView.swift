//
//  Pad.swift
//  Cyrilica
//
//  Created by Felix on 01.11.21.
//

import SwiftUI

struct PadView: View {
  let data = (1...25).map { "\($0)" }
  let columns = [
    GridItem(.fixed(30))
  ]
  
  @Environment(\.colorScheme) var colorScheme
  
  @State private var showAlert = false
  @State private var currentButton = ""
  
  var body: some View {
    GridStack(rows: 3, columns: 2) { row, col in
      ZStack {
        Button(action: {
          showAlert = true
          currentButton = "R\(row) C\(col)"
        }) {
          Text("R\(row) C\(col)")
            .frame(maxWidth: abs(.infinity), maxHeight: abs(.infinity))
            .foregroundColor(Color.black)
            .background(Color.yellow)
            .cornerRadius(10)
            .overlay(
              RoundedRectangle(cornerRadius: 10)
                .stroke(colorScheme == .dark ? Color.yellow : Color.black, lineWidth: 2)
            )
        }.alert(isPresented: $showAlert) {
          Alert(
            title: Text("Debug"),
            message: Text("Button pressed -  \(currentButton)")
          )
          
        }
      }
    }
  }
}

struct PadView_Previews: PreviewProvider {
  static var previews: some View {
    PadView()
  }
}
