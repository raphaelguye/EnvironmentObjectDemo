//
// Created by Raphael Guye on 12.11.21
// https://github.com/raphaelguye
//

import SwiftUI

// MARK: - RootView

struct RootView: View {

  @EnvironmentObject var counter: Counter
  @StateObject var firstViewModel = FirstViewModel()

  var body: some View {
    VStack {
      Text("Counter: \(counter.value)").padding()
      Button("Increment by 1") {
        counter.increment()
      }.padding()
      NavigationLink(
        "Go to FirstView",
        destination: FirstView(viewModel: firstViewModel)
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
