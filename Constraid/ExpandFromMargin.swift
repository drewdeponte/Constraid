import UIKit

extension UIView {
    open func expand(fromBottomMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .bottomMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromTopMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .greaterThanOrEqual,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func expand(fromLeadingMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .leadingMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromTrailingMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .trailingMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromHorizontalMarginsOf item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(fromTopMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromBottomMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(fromVerticalMarginsOf item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(fromLeadingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromTrailingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(fromMarginsOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(fromTopMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromBottomMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromLeadingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromTrailingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }
}
