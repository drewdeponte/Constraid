#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension Constraid.View {
    /**
        Set width of receiver using a constraint in auto-layout

        - parameter constant: The value to set the width to
        - parameter priority: The priority this constraint uses when being
            evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func setWidth(_ constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

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

        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .width,
                relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
                multiplier: 1.0, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Set height of receiver using a constraint in auto-layout

        - parameter constant: The value to set the height to
        - parameter priority: The priority this constraint uses when being
            evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func setHeight(_ constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

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

        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .height,
                relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
                multiplier: 1.0, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Set width of receiver to width of `item`

        - parameter item: The object to set the width based on
        - parameter constant: The amount to adjust the constraint by
        - parameter multiplier: The ratio altering the constraint relative to
          the item
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func matchWidth(of item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .width,
                relatedBy: .equal, toItem: item, attribute: .width,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Set height of receiver to heigt of `item`

        - parameter item: The object to set the width based on
        - parameter constant: The amount to adjust the constraint by
        - parameter multiplier: The ratio altering the constraint relative to
          the item
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func matchHeight(of item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .height,
                relatedBy: .equal, toItem: item, attribute: .height,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Add constraint to receiver declaring it square

        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func makeSquare(
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .width,
                relatedBy: .equal, toItem: self, attribute: .height,
                multiplier: 1.0, constant: 0.0, priority: priority)
            ])
        collection.activate()
        return collection
    }
}
