import UIKit

public enum Table {

    @inlinable
    public static func row(
        alignment: VerticalAlignment = .center,
        spacing: CGFloat = 0,
        @TableBuilder builder: () -> UIStackView
    ) -> UIView {
        let view = builder()
        view.axis = .horizontal
        view.distribution = .fill
        view.alignment = alignment.wrapped
        view.spacing = spacing
        return view
    }

    public struct VerticalAlignment {

        public static let fill = VerticalAlignment(.fill)

        public static let top = VerticalAlignment(.leading)

        public static let firstBaseline = VerticalAlignment(.firstBaseline)

        public static let center = VerticalAlignment(.center)

        public static let lastBaseline = VerticalAlignment(.lastBaseline)

        public static let bottom = VerticalAlignment(.trailing)

        @usableFromInline
        let wrapped: UIStackView.Alignment

        @inlinable
        init(_ wrapped: UIStackView.Alignment) {
            self.wrapped = wrapped
        }
    }
}

extension Table {

    public struct HorizontalAlignment {

        public static let fill = HorizontalAlignment(.fill)

        public static let leading = HorizontalAlignment(.leading)

        public static let center = HorizontalAlignment(.center)

        public static let trailing = HorizontalAlignment(.trailing)

        @usableFromInline
        let wrapped: UIStackView.Alignment

        @inlinable
        init(_ wrapped: UIStackView.Alignment) {
            self.wrapped = wrapped
        }
    }

    @inlinable
    public static func col(
        alignment: HorizontalAlignment = .center,
        spacing: CGFloat = 0,
        @TableBuilder builder: () -> UIStackView
    ) -> UIView {
        let view = builder()
        view.axis = .vertical
        view.distribution = .fill
        view.alignment = alignment.wrapped
        view.spacing = spacing
        return view
    }
}
