//
// Created by Raphael Guye on 16.11.21
// https://github.com/raphaelguye
//
import Foundation

class CounterViewModel : ObservableObject {

  // MARK: Lifecycle

  init(counter: Counter) {
    self.counter = counter
  }

  // MARK: Internal

  let counter: Counter

  func process() {
    counter.increment(nb: 100)
  }

}

