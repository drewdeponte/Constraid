#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension Constraid.View {
    /**
        Constrains the object's leading edge to the leading edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the leading
          edge of the item
        - parameter multiplier: The ratio altering the constraint relative to
          leading edge of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    public func flush(withLeadingEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .leading, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's trailing edge to the trailing edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the trailing
          edge of the item
        - parameter multiplier: The ratio altering the constraint relative to
          trailing edge of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    public func flush(withTrailingEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .trailing, multiplier: multiplier,
                               constant: (-1.0 * inset), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top edge to the top edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the top
          edge of the item
        - parameter multiplier: The ratio altering the constraint relative to
          top edge of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    public func flush(withTopEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .top, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's bottom edge to the bottom edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the bottom
          edge of the item
        - parameter multiplier: The ratio altering the constraint relative to
          bottom edge of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    public func flush(withBottomEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .bottom, multiplier: multiplier,
                               constant: (-1.0 * inset), priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's leading & trailing edges to the leading &
        trailing edges of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the leading &
          trailing edges of the item
        - parameter multiplier: The ratio altering the constraint relative to
          leading & trailing edges of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    public func flush(withVerticalEdgesOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withLeadingEdgeOf: item, insetBy: inset, multiplier: multiplier,
                                priority: priority) +
                          flush(withTrailingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's top & bottom edges to the top & bottom edges of
        `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the top &
          bottom edges of the item
        - parameter multiplier: The ratio altering the constraint relative to
          top & bottom edges of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    public func flush(withHorizontalEdgesOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withTopEdgeOf: item, insetBy: inset, multiplier: multiplier,
                                priority: priority) +
                          flush(withBottomEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's leading, trailing, top & bottom edge to the
        leading, trailing, top & bottom edge of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the leading,
          trailing, top & bottom edges of the item
        - parameter multiplier: The ratio altering the constraint relative to
          leading, trailing, top & bottom edges of the item prior to the `inset`
          being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    public func flush(withEdgesOf item: Any?, insetBy inset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
                    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> ConstraidConstraintCollection {
        
        let constraints = flush(withHorizontalEdgesOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          flush(withVerticalEdgesOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
