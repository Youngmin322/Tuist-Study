//
//  TCADemoApp.swift
//  TCADemo
//
//  Created by 조영민 on 4/24/25.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCADemoApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: TCADemoApp.store)
        }
    }
}
