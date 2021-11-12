//
// Created by Raphael Guye on 12.11.21
// https://github.com/raphaelguye
//

import SwiftUI

// MARK: - RootView

struct RootView: View {

  @EnvironmentObject var counter: Counter

  var body: some View {
    VStack {
      Text("Counter: \(counter.value)").padding()
      Button("Increment") {
        counter.increment()
      }.padding()
      NavigationLink(
        "Go to FirstView",
        destination: FirstView()
          .environmentObject(counter)).padding()
    }
  }
}

// MARK: - RootView_Previews

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
      .environmentObject(Counter())
  }
}
