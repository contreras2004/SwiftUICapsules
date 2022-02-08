import SwiftUI

public protocol Route/*: CaseIterable, Identifiable*/ {
    var text: String { get }
}

public protocol Coordinator {
    func navigate<T: View>(_ route: Route, content: () -> T) -> AnyView
}
