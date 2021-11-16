//
// Created by Raphael Guye on 12.11.21
// https://github.com/raphaelguye
//

import SwiftUI

// MARK: - FirstView

struct FirstView: View {

  // MARK: Internal

  @EnvironmentObject var counter: Counter

  var body: some View {
    CounterView(counter: counter)
  }
}

// MARK: - FirstView_Previews

struct FirstView_Previews: PreviewProvider {
  static var previews: some View {
    FirstView()
  }
}
