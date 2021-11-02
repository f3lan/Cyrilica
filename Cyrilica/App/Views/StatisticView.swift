//
//  StatisticView.swift
//  Cyrilica
//
//  Created by Felix on 02.11.21.
//

import SwiftUI

struct StatisticView: View {
  @Environment(\.colorScheme) var colorScheme
  @State public var colors: [Color] = [Color.black, Color.blue]
  
  private func setColors(colorScheme: ColorScheme) -> [Color] {
    if self.colorScheme == .dark {
      return [Color.white, Color.yellow]
    } else {
      return  [Color.black, Color.yellow]
    }
  }
  
  var body: some View {
    NavigationView() {
      PieChartView(values: [25, 75],
                   names: ["Right", "Wrong"],
                   formatter: {value in String(format: "%.1f", value)},
                   colors: setColors(colorScheme: self.colorScheme)
      )
      .navigationTitle("Statistics")
    }
  }
}



struct StatisticView_Previews: PreviewProvider {
  static var previews: some View {
    StatisticView()
    StatisticView().preferredColorScheme(.dark)
  }
}
