import UIKit

@resultBuilder
enum TableBuilder {

    @inlinable
    static func buildBlock(_ components: [UIView]...) -> [UIView] {
        return components.reduce([], +)
    }

    @inlinable
    static func buildIf(_ component: [UIView]?) -> [UIView] {
        return component ?? []
    }

    @inlinable
    static func buildEither(first component: [UIView]) -> [UIView] {
        return component
    }

    @inlinable
    static func buildEither(second component: [UIView]) -> [UIView] {
        return component
    }

    @inlinable
    static func buildArray(_ components: [[UIView]]) -> [UIView] {
        return components.reduce([], +)
    }

    @inlinable
    static func buildLimitedAvailability(_ component: [UIView]) -> [UIView] {
        return component
    }

    @inlinable
    static func buildExpression(_ expression: UIView) -> [UIView] {
        return [expression]
    }

    @inlinable
    static func buildExpression(_ expression: UIView?) -> [UIView] {
        if let expression = expression {
            return [expression]
        }
        return []
    }

    @inlinable
    static func buildExpression(_ expression: [UIView]) -> [UIView] {
        return expression
    }

    @inlinable
    static func buildExpression(_ expression: [UIView]?) -> [UIView] {
        return expression ?? []
    }

    @inlinable
    static func buildFinalResult(_ component: [UIView]) -> UIStackView {
        defer {
            let defaultSpacers = component.filter {
                guard let spacer = $0 as? Spacer else { return false }
                return spacer.length == nil
            }
            if let left = defaultSpacers.first {
                defaultSpacers[1...].forEach { right in
                    left.widthAnchor.constraint(equalTo: right.widthAnchor).isActive = true
                    left.heightAnchor.constraint(equalTo: right.heightAnchor).isActive = true
                }
            }
        }
        return UIStackView(arrangedSubviews: component)
    }
}
