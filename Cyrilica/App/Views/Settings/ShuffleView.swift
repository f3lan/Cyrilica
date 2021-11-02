//
//  ShuffleView.swift
//  Cyrilica
//
//  Created by Felix on 02.11.21.
//

import SwiftUI

struct ShuffleView: View {
  @ObservedObject var bluetooth = Settings()

      var body: some View {
          return NavigationLink(destination: ToggleBluetoothView(bluetooth: bluetooth)) {
              HStack() {
                  Text("Shuffle")
                      .foregroundColor(.blue)
                      .font(.system(size: 20))
                      .frame(width: 150,height: 40, alignment: .leading)
                  Text(bluetooth.isBluetoothOn ? "On" : "Off")
                      .foregroundColor(.gray)
                      .font(.system(size: 20))
                      .font(.subheadline)
                      .frame(width: 170, height: 40, alignment: .trailing)
              }
          }
      }
}

struct ToggleBluetoothView: View {
   @ObservedObject var bluetooth: Settings
    
    var body: some View {
        Form {
            Section(header: Text("Shuffle the alphabets")) {
                Toggle(isOn: $bluetooth.isBluetoothOn) {
                    Text("Shuffle")
                    }
            }
        }
    }
}

struct ShuffleView_Previews: PreviewProvider {
    static var previews: some View {
        ShuffleView()
    }
}
