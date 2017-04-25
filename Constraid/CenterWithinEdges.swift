#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

public enum ConstraidVerticalOffsetDirection {
    case up
    case down
}

public enum ConstraidHorizontalOffsetDirection {
    case right
    case left
}

public enum ConstraidOffsetDirection {
    case downAndRight
    case upAndLeft
}

extension ConstraidView {
    @discardableResult
    open func center(verticallyWithin item: Any?,
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
                    relatedBy: .equal, toItem: item, attribute: .centerY,
                    multiplier: multiplier, constant: offset, priority: priority)
            )
        case .up:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerY,
                    relatedBy: .equal, toItem: item, attribute: .centerY,
                    multiplier: multiplier, constant: (offset * -1), priority: priority)
            )
        }
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(horizontallyWithin item: Any?,
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
                    relatedBy: .equal, toItem: item, attribute: .centerX,
                    multiplier: multiplier, constant: offset, priority: priority)
            )
        case .left:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerX,
                    relatedBy: .equal, toItem: item, attribute: .centerX,
                    multiplier: multiplier, constant: (offset * -1), priority: priority)
            )
        }
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(within item: Any?,
        offsetBy offset: CGFloat = 0.0,
        offsetDirection direction: ConstraidOffsetDirection = .downAndRight,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        switch direction {
        case .downAndRight:
            let constraints = center(horizontallyWithin: item,
                                offsetBy: offset, offsetDirection: .right,
                                multiplier: multiplier, priority: priority) +
                              center(verticallyWithin: item,
                                offsetBy: offset, offsetDirection: .down,
                                multiplier: multiplier, priority: priority)
            constraints.activate()
            return constraints
        case .upAndLeft:
            let constraints = center(horizontallyWithin: item,
                                offsetBy: offset, offsetDirection: .left,
                                multiplier: multiplier, priority: priority) +
                              center(verticallyWithin: item,
                                offsetBy: offset, offsetDirection: .up,
                                multiplier: multiplier, priority: priority)
            constraints.activate()
            return constraints
        }
    }

    // MARK: - Deprecated

    @discardableResult
    @available(*, deprecated, message: "use center(verticallyWithin: ...)")
    open func centerVertically(within item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .centerY,
                relatedBy: .equal, toItem: item, attribute: .centerY,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use center(horizontallyWithin: ...)")
    open func centerHorizontally(within item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .centerX,
                relatedBy: .equal, toItem: item, attribute: .centerX,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use center(within: , offsetBy: ...)")
    open func center(within item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = center(horizontallyWithin: item,
                            offsetBy: constant, offsetDirection: .right,
                            multiplier: multiplier, priority: priority) +
                          center(verticallyWithin: item,
                            offsetBy: constant, offsetDirection: .down,
                            multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
