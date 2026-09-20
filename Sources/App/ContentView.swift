import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                // App Logo with Apple-style rounded squircle & subtle glow
                Image("AppLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 96, height: 96)
                    .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
                    .shadow(color: Color.blue.opacity(0.35), radius: 16, x: 0, y: 8)

                Text("Built on GitHub Actions")
                    .font(.title2)
                    .fontWeight(.bold)

                Text("This Swift iOS app was compiled in the cloud without a local Mac!")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)

                VStack(spacing: 12) {
                    Text("Counter: \(tapCount)")
                        .font(.title3)
                        .fontWeight(.semibold)

                    Button(action: {
                        tapCount += 1
                    }) {
                        Label("Tap Me", systemImage: "plus.circle.fill")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: 200)
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
                .background(Color(.secondarySystemBackground))
                .cornerRadius(16)

                Spacer()
            }
            .padding(.top, 40)
            .navigationTitle("Hello iOS")
        }
    }
}

#Preview {
    ContentView()
}
