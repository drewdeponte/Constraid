// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
    @discardableResult
    open func center(verticallyWithinMarginsOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .centerY,
                relatedBy: .equal, toItem: item,
                attribute: .centerYWithinMargins, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(horizontallyWithinMarginsOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .centerX,
                relatedBy: .equal, toItem: item,
                attribute: .centerXWithinMargins, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(withinMarginsOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = center(horizontallyWithinMarginsOf: item,
                            constant: constant, multiplier: multiplier,
                            priority: priority) +
                          center(verticallyWithinMarginsOf: item,
                            constant: constant, multiplier: multiplier,
                            priority: priority)
        constraints.activate()
        return constraints
    }
}
