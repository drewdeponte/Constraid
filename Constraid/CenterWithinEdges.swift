import UIKit

extension UIView {
    open func centerVertically(within item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal,
                               toItem: item, attribute: .centerY, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func centerHorizontally(within item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal,
                               toItem: item, attribute: .centerX, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func center(within item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.centerHorizontally(within: item, constant: constant, multiplier: multiplier,
                                priority: priority)
        self.centerVertically(within: item, constant: constant, multiplier: multiplier,
                              priority: priority)
    }
}
