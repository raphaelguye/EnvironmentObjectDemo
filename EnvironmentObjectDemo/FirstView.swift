//
// Created by Raphael Guye on 12.11.21
// https://github.com/raphaelguye
//

import SwiftUI

// MARK: - FirstView

struct FirstView: View {

  // MARK: Internal

  @EnvironmentObject var counter: Counter
  @ObservedObject var viewModel = FirstViewModel()

  var body: some View {
    VStack {
      Text("Counter: \(counter.value)").padding()
      Button("Do stuff and Increment") {
        viewModel.process()
      }
    }
  }
}

// MARK: - FirstView_Previews

struct FirstView_Previews: PreviewProvider {
  static var previews: some View {
    FirstView()
  }
}
