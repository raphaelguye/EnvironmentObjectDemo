//
// Created by Raphael Guye on 12.11.21
// https://github.com/raphaelguye
//

import Foundation
import Combine

class FirstViewModel : ObservableObject {

  @Published var result = 0

  func process() {
    // Do some stufs..
    // ..

    // Finally:
    result = 100 // TODO: Increment the Counter of 100
  }

}
