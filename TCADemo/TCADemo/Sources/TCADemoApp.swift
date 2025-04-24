import ComposableArchitecture
import SwiftUI

@main
struct TCADemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(initialState: CounterFeature.State()) {
                    CounterFeature()
                        .dependency(\.numberFact, .liveValue)
                }
            )
        }
    }
}
