import UIKit

extension UIView {

    @inlinable
    @discardableResult
    public func constrain(width: CGFloat, height:  CGFloat) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }

    @inlinable
    @discardableResult
    public func constrain(width: CGFloat) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }

    @inlinable
    @discardableResult
    public func constrain(height:  CGFloat) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
}

