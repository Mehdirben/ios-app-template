import SwiftUI

// The app's entry point. @main tells iOS to launch the app from this struct —
// SwiftUI apps have no main.swift or AppDelegate; this replaces them.
@main
struct MyiOSApp: App {
    // `body` describes the app's scene hierarchy. A Scene is a top-level
    // container; WindowGroup is the standard one for iPhone apps and
    // manages the app's main window (and its lifecycle).
    var body: some Scene {
        WindowGroup {
            // The root view shown on screen when the app launches
            ContentView()
        }
    }
}
