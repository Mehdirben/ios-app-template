import SwiftUI

// The app's main (and only) screen. A View in SwiftUI is a lightweight
// blueprint of the UI; `body` declares what it looks like.
struct ContentView: View {
    // @State marks local, mutable data owned by this view. SwiftUI re-renders
    // the view automatically whenever this value changes (e.g. on a button tap).
    @State private var tapCount = 0

    // Describes this screen's layout and behavior
    var body: some View {
        // Provides the navigation bar at the top; also enables push-navigation
        // to detail screens later (none used yet, but the scaffolding is ready)
        NavigationStack {
            // Vertical stack: lays out the elements below each other with 24pt gaps
            VStack(spacing: 24) {
                // App Logo with Apple-style rounded squircle & subtle glow
                Image("AppLogo")
                    .resizable()                    // allow custom sizing
                    .scaledToFit()                  // keep aspect ratio
                    .frame(width: 96, height: 96)
                    .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
                    .shadow(color: Color.blue.opacity(0.35), radius: 16, x: 0, y: 8)

                // Main headline
                Text("Built on GitHub Actions")
                    .font(.title2)
                    .fontWeight(.bold)

                // Supporting text, centered and dimmed to secondary color
                Text("This Swift iOS app was compiled in the cloud without a local Mac!")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)

                // Counter card: a rounded panel holding the counter text and button
                VStack(spacing: 12) {
                    // Reads tapCount — updates automatically whenever it changes
                    Text("Counter: \(tapCount)")
                        .font(.title3)
                        .fontWeight(.semibold)

                    Button(action: {
                        // Button tap: mutate state, SwiftUI re-renders,
                        // and the "Counter" text above updates instantly
                        tapCount += 1
                    }) {
                        // The button's visual label: text + system icon
                        Label("Tap Me", systemImage: "plus.circle.fill")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: 200)
                            // Blue-to-cyan horizontal gradient background
                            .background(
                                LinearGradient(
                                    colors: [Color.blue, Color.cyan],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
                .padding()
                // Light gray system background makes the card stand out from the screen
                .background(Color(.secondarySystemBackground))
                .cornerRadius(16)

                // Pushes content to the top, so the stack fills the screen
                Spacer()
            }
            .padding(.top, 40)
            // Title shown in the navigation bar
            .navigationTitle("Hello iOS")
        }
    }
}

// Xcode live preview: renders this view in Xcode's canvas while editing,
// without running the full app. Not included in the shipped app.
#Preview {
    ContentView()
}
