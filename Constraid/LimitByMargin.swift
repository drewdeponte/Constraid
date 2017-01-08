import UIKit

extension UIView {
    open func limit(byBottomMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom,relatedBy: .lessThanOrEqual,
                               toItem: item, attribute: .bottomMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func limit(byTopMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .lessThanOrEqual,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func limit(byLeadingMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .lessThanOrEqual,
                               toItem: item, attribute: .leadingMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func limit(byTrailingMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing,
                               relatedBy: .lessThanOrEqual, toItem: item, attribute: .trailingMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func limit(byHorizontalMarginsOf item: Any?, constant: CGFloat = 0.0,
                              multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        limit(byTopMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byBottomMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }

    open func limit(byVerticalMarginsOf item: Any?, constant: CGFloat = 0.0,
                                multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        limit(byLeadingMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byTrailingMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }

    open func limit(byMarginsOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        limit(byTopMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byBottomMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byLeadingMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byTrailingMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }
}
