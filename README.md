# EnvironmentObjectDemo
Trying to find a way to update an EnvironmentObject from a ViewModel

### [Counter.swift](https://github.com/raphaelguye/EnvironmentObjectDemo/tree/main/EnvironmentObjectDemo)
This is the ObservableObject to share a counter across all the App.
```
class Counter : ObservableObject {
  @Published var value: Int = 0

  func increment(nb: Int = 1) {
    value = value + nb
  }
}
```

### [ContentView.swift](https://github.com/raphaelguye/EnvironmentObjectDemo/blob/main/EnvironmentObjectDemo/ContentView.swift)
In charge of instanciate the Counter object and to pass it to the RootView in an environmentObject
```
var body: some View {
  NavigationView {
    RootView()
      .environmentObject(Counter())
  }
}
```

### [RootView.swift](https://github.com/raphaelguye/EnvironmentObjectDemo/blob/main/EnvironmentObjectDemo/RootView.swift)
Display the counter and a button to navigate to the FirstView. Give the Counter to the FirstView as an environmentObject.
```
VStack {
  Text("Counter: \(counter.value)").padding()
  NavigationLink(
    "Go to FirstView",
    destination: FirstView()
      .environmentObject(counter)).padding()
}
```

### [FirstView.swift](https://github.com/raphaelguye/EnvironmentObjectDemo/blob/main/EnvironmentObjectDemo/FirstView.swift)
Display a button to call a logic method in the ViewModel. Receive the Counter as an EnvironmentObject.
```
Button("Do stuff and Increment") {
  viewModel.process()
}
```

### [FirstViewModel.swift](https://github.com/raphaelguye/EnvironmentObjectDemo/blob/main/EnvironmentObjectDemo/FirstViewModel.swift)
Contain a ```process()```function to do some stuff. Finally, we would like to increment the main Counter by 100.
```
class FirstViewModel : ObservableObject {

  @Published var result = 0

  func process() {
    // Do some stufs..
    // ..
    // Finally:
    result = 100 // TODO: Increment the Counter of 100
  }

}
```




