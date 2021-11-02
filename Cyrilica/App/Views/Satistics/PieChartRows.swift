//
//  PieChartView.swift
//  Cyrilica
//
//  Created by Felix on 02.11.21.
//

import SwiftUI


struct PieChartRows: View {
  var colors: [Color]
  var names: [String]
  var values: [String]
  var percents: [String]
  
  var body: some View {
    VStack{
      ForEach(0..<self.values.count){ i in
        HStack {
          RoundedRectangle(cornerRadius: 5.0)
            .fill(self.colors[i])
            .frame(width: 20, height: 20)
          Text(self.names[i])
          Spacer()
          VStack(alignment: .trailing) {
            Text(self.values[i])
              .foregroundColor(Color.black)
            Text(self.percents[i])
              .font(.footnote)
              .foregroundColor(Color.gray)
          }
        }
      }
    }
  }
}

struct PieChartRows_Previews: PreviewProvider {
  static var previews: some View {
    let values = [10, 20]
    let formatter = {value in String(format: "%.0f", value)}
    PieChartRows(colors: [Color.red, Color.blue], names: ["A", "B"], values:values.map { formatter($0) }, percents: values.map { String(format: "%.0f%%", $0 * 100 / values.reduce(0, +)) })
  }
}
