#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    @discardableResult
    open func setWidth(_ constant: CGFloat = 0.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        var targetConstraint: NSLayoutConstraint?

        for constraint in self.constraints {
            if constraint.firstAttribute == .width && constraint.relation == .equal {
                targetConstraint = constraint
            }
        }

        if let constraint = targetConstraint {
            self.removeConstraint(constraint)
        }

        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .width,
                relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
                multiplier: 1.0, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func setHeight(_ constant: CGFloat = 0.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        var targetConstraint: NSLayoutConstraint?

        for constraint in self.constraints {
            if constraint.firstAttribute == .height && constraint.relation == .equal {
                targetConstraint = constraint
            }
        }

        if let constraint = targetConstraint {
            self.removeConstraint(constraint)
        }

        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .height,
                relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
                multiplier: 1.0, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func matchWidth(of item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .width,
                relatedBy: .equal, toItem: item, attribute: .width,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func matchHeight(of item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .height,
                relatedBy: .equal, toItem: item, attribute: .height,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func makeSquare(
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .width,
                relatedBy: .equal, toItem: self, attribute: .height,
                multiplier: 1.0, constant: 0.0, priority: priority)
            ])
        collection.activate()
        return collection
    }
}
