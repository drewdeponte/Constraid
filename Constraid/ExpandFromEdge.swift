#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    /**
        Constrains the object's leading edge to be greater than or equal to the
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
    open func expand(fromLeadingEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .leading, multiplier: multiplier,
                constant: offset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's trailing edge to be greater than or equal to the
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
    open func expand(fromTrailingEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .trailing, multiplier: multiplier,
                constant: (offset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top edge to be greater than or equal to the
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
    open func expand(fromTopEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .greaterThanOrEqual, toItem: item, attribute: .top,
                multiplier: multiplier, constant: offset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's bottom edge to be greater than or equal to the
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
    open func expand(fromBottomEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .bottom, multiplier: multiplier,
                constant: (offset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top & bottom edges to be greater than or equal
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
    open func expand(fromHorizontalEdgesOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromBottomEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    /**
        Constrains the object's leading & trailing edges to be greater than or equal
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
    open func expand(fromVerticalEdgesOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromLeadingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromTrailingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top, bottom, leading & trailing edges to be
        greater than or equal to the top, bottom, leading & trailing edge of
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
    open func expand(fromEdgesOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromBottomEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromLeadingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromTrailingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }
}
