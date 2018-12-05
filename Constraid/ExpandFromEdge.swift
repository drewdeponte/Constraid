#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
 Constrains the object's leading edge to expand outward from the leading edge of `item`

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
@discardableResult
public func expand(_ itemA: Constraid.View, fromLeadingEdgeOf itemB: Any?,
                 times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading,
                           relatedBy: .lessThanOrEqual, toItem: itemB,
                           attribute: .leading, multiplier: multiplier,
                           constant: (offset * -1), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's trailing edge to expand outward from the
 leading edge of `item`

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
@discardableResult
public func expand(_ itemA: Constraid.View, fromTrailingEdgeOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .trailing,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .trailing, multiplier: multiplier,
                           constant: offset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top edge to outward from the
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
@discardableResult
public func expand(_ itemA: Constraid.View, fromTopEdgeOf itemB: Any?,
                 times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top,
                           relatedBy: .lessThanOrEqual, toItem: itemB, attribute: .top,
                           multiplier: multiplier, constant: (offset * -1), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's bottom edge to outward from the
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
@discardableResult
public func expand(_ itemA: Constraid.View, fromBottomEdgeOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .bottom,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .bottom, multiplier: multiplier,
                           constant: offset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top & bottom edges to expand outward from the
 top & bottom edges of `item`

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
@discardableResult
public func expand(_ itemA: Constraid.View, fromHorizontalEdgesOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.expand(itemA, fromTopEdgeOf: itemB, times: multiplier, offsetBy: offset,
                            priority: priority) +
        Constraid.expand(itemA, fromBottomEdgeOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority)
    return collection
}

/**
 Constrains the object's leading & trailing edges to expand outward from
 the leading & trailing edge of `item`

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
@discardableResult
public func expand(_ itemA: Constraid.View, fromVerticalEdgesOf itemB: Any?,
                 times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.expand(itemA, fromLeadingEdgeOf: itemB, times: multiplier, offsetBy: offset,
                            priority: priority) +
        Constraid.expand(itemA, fromTrailingEdgeOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority)
    return collection
}

/**
 Constrains the object's top, bottom, leading & trailing edges to expand
 outward from the top, bottom, leading & trailing edge of
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
@discardableResult
public func expand(_ itemA: Constraid.View, fromEdgesOf itemB: Any?,
                 times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.expand(itemA, fromTopEdgeOf: itemB, times: multiplier, offsetBy: offset,
                            priority: priority) +
        Constraid.expand(itemA, fromBottomEdgeOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority) +
        Constraid.expand(itemA, fromLeadingEdgeOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority) +
        Constraid.expand(itemA, fromTrailingEdgeOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority)
    return collection
}
