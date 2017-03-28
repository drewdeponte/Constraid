#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    @discardableResult
    open func center(verticallyWithin item: Any?, constant: CGFloat = 0.0, multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal,
                               toItem: item, attribute: .centerY, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(horizontallyWithin item: Any?, constant: CGFloat = 0.0, multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal,
                               toItem: item, attribute: .centerX, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func center(within item: Any?, constant: CGFloat = 0.0, multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = center(horizontallyWithin: item, constant: constant,
                            multiplier: multiplier, priority: priority) +
                          center(verticallyWithin: item, constant: constant,
                            multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
