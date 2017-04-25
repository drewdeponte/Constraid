// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
    @discardableResult
    open func center(verticallyWithinMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        offsetDirection direction: ConstraidVerticalOffsetDirection = .down,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        var collection = ConstraidConstraintCollection()
        switch direction {
        case .down:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerY,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerYWithinMargins, multiplier: multiplier,
                    constant: offset, priority: priority)
            )
        case .up:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerY,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerYWithinMargins, multiplier: multiplier,
                    constant: (offset * -1), priority: priority)
            )
        }
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(horizontallyWithinMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        offsetDirection direction: ConstraidHorizontalOffsetDirection = .right,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        var collection = ConstraidConstraintCollection()
        switch direction {
        case .right:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerX,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerXWithinMargins, multiplier: multiplier,
                    constant: offset, priority: priority)
            )
        case .left:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerX,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerXWithinMargins, multiplier: multiplier,
                    constant: (offset * -1), priority: priority)
            )
        }
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(withinMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        offsetDirection direction: ConstraidOffsetDirection = .downAndRight,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        switch direction {
        case .downAndRight:
            let constraints = center(horizontallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .right,
                                multiplier: multiplier, priority: priority) +
                              center(verticallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .down,
                                multiplier: multiplier, priority: priority)
            constraints.activate()
            return constraints
        case .upAndLeft:
            let constraints = center(horizontallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .left,
                                multiplier: multiplier, priority: priority) +
                              center(verticallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .up,
                                multiplier: multiplier, priority: priority)
            constraints.activate()
            return constraints
        }
    }

    // MARK: - Deprecated

    @discardableResult
    @available(*, deprecated, message: "use center(verticallyWithinMarginsOf: ...)")
    open func centerVertically(withinMarginsOf item: Any?,
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
    @available(*, deprecated, message: "use center(horizontallyWithinMarginsOf: ...)")
    open func centerHorizontally(withinMarginsOf item: Any?,
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
    @available(*, deprecated, message: "use center(withinMarginsOf: , offsetBy: ...)")
    open func center(withinMarginsOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = center(horizontallyWithinMarginsOf: item,
                            offsetBy: constant, offsetDirection: .right,
                            multiplier: multiplier, priority: priority) +
                          center(verticallyWithinMarginsOf: item,
                            offsetBy: constant, offsetDirection: .down,
                            multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
