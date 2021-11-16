//
// Created by Raphael Guye on 12.11.21
// https://github.com/raphaelguye
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {

  @StateObject var counter = Counter()

  var body: some View {
    NavigationView {
      RootView()
        .environmentObject(counter)
    }
  }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
