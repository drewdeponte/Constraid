#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension Constraid.View {
    /**
        Constrains the object's leading edge to be less than or equal to the
        leading edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          leading edge of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byLeadingEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .leading,
                multiplier: multiplier, constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's trailing edge to be less than or equal to the
        leading edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          trailing edge of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byTrailingEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .trailing, multiplier: multiplier,
                constant: (inset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top edge to be less than or equal to the
        top edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          top edge of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byTopEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .top,
                multiplier: multiplier, constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's bottom edge to be less than or equal to the
        bottom edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          bottom edge of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byBottomEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .bottom,
                multiplier: multiplier, constant: (inset * -1),
                priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top & bottom edges to be less than or equal
        to the top & bottom edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          top & bottom edge of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byHorizontalEdgesOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        let constraints = limit(byTopEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byBottomEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's leading & trailing edges to be less than or equal
        to the leading & trailing edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          leading & trailing edge of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byVerticalEdgesOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        let constraints = limit(byLeadingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byTrailingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's top, bottom, leading & trailing edges to be
        less than or equal to the top, bottom, leading & trailing edge of
        `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          top, bottom, leading & trailing edge of the item prior to the
          `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byEdgesOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        let constraints = limit(byTopEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byBottomEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byLeadingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byTrailingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
