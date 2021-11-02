//
//  ContentView.swift
//  Cyrilica
//
//  Created by Felix on 21.10.21.
//

import SwiftUI

struct ContentView: View {
  
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    TabView {
      GameView()
        .tabItem {
          Label("Play", systemImage: "dice")
        }.padding(20)
      StatisticView()
        .tabItem {
          Label("Statistics", systemImage: "chart.bar")
        }.padding(20)
      SettingsView()
        .tabItem {
          Label("Settings", systemImage: "gear")
        }
    }
    .accentColor(colorScheme == .dark ? .white : .yellow)
    .onAppear {
      UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
      AppDelegate.orientationLock = .portrait
    }.onDisappear {
      AppDelegate.orientationLock = .all
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView().preferredColorScheme(.dark)
  }
}
