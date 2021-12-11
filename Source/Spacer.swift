import UIKit

public final class Spacer: UIView {

    @usableFromInline
    let length: CGFloat?

    @inlinable
    public init(length: CGFloat? = nil) {
        self.length = length
        super.init(frame: .zero)
        let priority = UILayoutPriority(length == nil ? 0 : 1)
        setContentHuggingPriority(priority, for: .vertical)
        setContentHuggingPriority(priority, for: .horizontal)
        setContentCompressionResistancePriority(priority, for: .vertical)
        setContentCompressionResistancePriority(priority, for: .horizontal)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        return nil
    }

    @inlinable
    override public var intrinsicContentSize: CGSize {
        let length = length ?? UIView.noIntrinsicMetric
        return CGSize(width: length, height: length)
    }
}
