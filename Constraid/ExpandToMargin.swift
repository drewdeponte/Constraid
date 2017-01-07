import UIKit

extension UIView {
    open func expand(toBottomMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .bottomMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(toTopMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .greaterThanOrEqual,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func expand(toLeadingMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .leadingMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(toTrailingMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .trailingMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expandVertically(toMarginsOf item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(toTopMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toBottomMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expandHorizontally(toMarginsOf item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(toLeadingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toTrailingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(toMarginsOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(toTopMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toBottomMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toLeadingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toTrailingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }
}
