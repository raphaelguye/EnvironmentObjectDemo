//
// Created by Raphael Guye on 16.11.21
// https://github.com/raphaelguye
//

import SwiftUI

// MARK: - CounterView

struct CounterView: View {

  @ObservedObject var counter: Counter
  @StateObject var viewModel: CounterViewModel

  init(counter: Counter) {
    self.counter = counter
    _viewModel = StateObject<CounterViewModel>(
      wrappedValue: CounterViewModel(counter: counter)
    )
  }

  var body: some View {
    VStack {
      Text("Counter: \(counter.value)").padding()
      Button("Do stuff and Increment by 100") {
        viewModel.process()
      }
    }
  }
}

// MARK: - CounterView_Previews

struct CounterView_Previews: PreviewProvider {
  static var previews: some View {
    CounterView(
      counter: Counter()
    )
  }
}
