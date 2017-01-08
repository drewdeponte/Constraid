import UIKit

extension UIView {
    open func limit(byBottomEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .lessThanOrEqual,
                               toItem: item, attribute: .bottom, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func limit(byTopEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .lessThanOrEqual,
                               toItem: item, attribute: .top, multiplier: multiplier, constant: constant,
                               priority: priority)
            ])
    }

    open func limit(byLeadingEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .lessThanOrEqual,
                               toItem: item, attribute: .leading, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func limit(byTrailingEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing,
                               relatedBy: .lessThanOrEqual, toItem: item, attribute: .trailing,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func limit(byHorizontalEdgesOf item: Any?, constant: CGFloat = 0.0,
                              multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        limit(byTopEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byBottomEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }

    open func limit(byVerticalEdgesOf item: Any?, constant: CGFloat = 0.0,
                                multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        limit(byLeadingEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byTrailingEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }

    open func limit(byEdgesOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        limit(byTopEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byBottomEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byLeadingEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        limit(byTrailingEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }
}
