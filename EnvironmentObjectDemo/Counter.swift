import Foundation

class Counter : ObservableObject {
  @Published var value: Int = 0

  func increment(nb: Int = 1) {
    value = value + nb
  }
}
