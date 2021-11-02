//
//  SettingsView.swift
//  Cyrilica
//
//  Created by Felix on 02.11.21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
      NavigationView {
        Form {
          Section(header: Text("Mode")) {
            ShuffleView()
          }
          Section(header: Text("Danger Zone")) {
            Text("Reset Statistics")
              .font(.body)
              .foregroundColor(Color.red)
          }
        }
        .navigationBarTitle(Text("Settings")).font(.largeTitle)
      }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
