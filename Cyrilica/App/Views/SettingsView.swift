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
          Section(header: Text("settingsView.mode")) {
            ShuffleView()
          }
          Section(header: Text("settingsView.dangerZone")) {
            Text("Reset Statistics")
              .font(.body)
              .foregroundColor(Color.red)
          }
        }
        .navigationBarTitle(Text("settingsView.settings")).font(.largeTitle)
      }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
