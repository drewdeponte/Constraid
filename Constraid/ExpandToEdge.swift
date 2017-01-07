import UIKit

extension UIView {
    open func expand(toBottomEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .bottom,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(toTopEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .top,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(toLeadingEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .leading,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(toTrailingEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .trailing,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expandVertically(toEdgesOf item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(toTopEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toBottomEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expandHorizontally(toEdgesOf item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(toLeadingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toTrailingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(toEdgesOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        expand(toTopEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toBottomEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toLeadingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(toTrailingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }
}
