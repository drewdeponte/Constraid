#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
 Constrains the object's leading edge to be limited by the
 leading edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading edge of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byLeadingEdgeOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading,
                           relatedBy: .greaterThanOrEqual, toItem: itemB, attribute: .leading,
                           multiplier: multiplier, constant: inset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's trailing edge to be limited by the
 trailing edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 trailing edge of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byTrailingEdgeOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .trailing,
                           relatedBy: .lessThanOrEqual, toItem: itemB,
                           attribute: .trailing, multiplier: multiplier,
                           constant: (inset * -1), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top edge to be limited by the
 top edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top edge of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byTopEdgeOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top,
                           relatedBy: .greaterThanOrEqual, toItem: itemB, attribute: .top,
                           multiplier: multiplier, constant: inset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's bottom edge to be limited by the
 bottom edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 bottom edge of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byBottomEdgeOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .bottom,
                           relatedBy: .lessThanOrEqual, toItem: itemB, attribute: .bottom,
                           multiplier: multiplier, constant: (inset * -1),
                           priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top & bottom edges to be limited by
 the top & bottom edges of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top & bottom edge of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byHorizontalEdgesOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let constraints = Constraid.limit(itemA, byTopEdgeOf: itemB, times: multiplier, insetBy: inset,
                             priority: priority) +
        Constraid.limit(itemA, byBottomEdgeOf: itemB, times: multiplier, insetBy: inset,
               priority: priority)
    return constraints
}

/**
 Constrains the object's leading & trailing edges to be limited by
 the leading & trailing edges of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading & trailing edge of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byVerticalEdgesOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let constraints = Constraid.limit(itemA, byLeadingEdgeOf: itemB, times: multiplier, insetBy: inset,
                            priority: priority) +
        Constraid.limit(itemA, byTrailingEdgeOf: itemB, times: multiplier, insetBy: inset,
              priority: priority)
    return constraints
}

/**
 Constrains the object's top, bottom, leading & trailing edges to be
 limited by the top, bottom, leading & trailing edges of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top, bottom, leading & trailing edge of the item prior to the
 `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byEdgesOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let constraints = Constraid.limit(itemA, byTopEdgeOf: itemB, times: multiplier, insetBy: inset,
                            priority: priority) +
        Constraid.limit(itemA, byBottomEdgeOf: itemB, times: multiplier, insetBy: inset,
              priority: priority) +
        Constraid.limit(itemA, byLeadingEdgeOf: itemB, times: multiplier, insetBy: inset,
              priority: priority) +
        Constraid.limit(itemA, byTrailingEdgeOf: itemB, times: multiplier, insetBy: inset,
              priority: priority)
    return constraints
}
