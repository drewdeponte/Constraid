// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
    open func centerVertically(withinMarginsOf item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal,
                               toItem: item, attribute: .centerYWithinMargins,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func centerHorizontally(withinMarginsOf item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal,
                               toItem: item, attribute: .centerYWithinMargins,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func center(withinMarginsOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.centerHorizontally(withinMarginsOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        self.centerVertically(withinMarginsOf: item, constant: constant,
                              multiplier: multiplier, priority: priority)
    }
}
