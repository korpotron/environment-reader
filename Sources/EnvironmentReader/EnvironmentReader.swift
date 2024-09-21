import SwiftUI

public struct EnvironmentReader<Value, Content: View>: View {
    private let keyPath: KeyPath<EnvironmentValues, Value>
    private let content: (Value) -> Content

    public init(_ keyPath: KeyPath<EnvironmentValues, Value>, @ViewBuilder content: @escaping (Value) -> Content) {
        self.keyPath = keyPath
        self.content = content
    }

    @Environment(\.self)
    private var environment

    private var value: Value {
        environment[keyPath: keyPath]
    }

    public var body: some View {
        content(value)
    }
}

#Preview {
    VStack {
        EnvironmentReader(\.colorScheme) { value in
            Text("\(value)")
        }
    }
    .preferredColorScheme(.dark)
}
