#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
 Constrains the object's leading, top, and bottom edges to be equal to the
 leading, top, and bottom edges of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading, top, and bottom edges of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
@discardableResult
public func cup(_ itemA: Constraid.View, byLeadingEdgeOf itemB: Any?,
                   times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                   priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal, toItem: itemB, attribute: .top, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal, toItem: itemB, attribute: .leading, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal, toItem: itemB, attribute: .bottom, multiplier: multiplier, constant: (-1.0 * inset), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's trailing, top, and bottom edges to be equal to the
 trailing, top, and bottom edges of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 trailing, top, and bottom edges of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
@discardableResult
public func cup(_ itemA: Constraid.View, byTrailingEdgeOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal, toItem: itemB, attribute: .top, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal, toItem: itemB, attribute: .trailing, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal, toItem: itemB, attribute: .bottom, multiplier: multiplier, constant: (-1.0 * inset), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's leading, top, and trailing edges to be equal to the
 leading, top, and trailing edges of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading, top, and trailing edges of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
@discardableResult
public func cup(_ itemA: Constraid.View, byTopEdgeOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal, toItem: itemB, attribute: .leading, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal, toItem: itemB, attribute: .top, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal, toItem: itemB, attribute: .trailing, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        ])
    return collection
}

/**
 Constrains the object's leading, bottom, and trailing edges to be equal to the
 leading, bottom, and trailing edges of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading, bottom, and trailing edges of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
@discardableResult
public func cup(_ itemA: Constraid.View, byBottomEdgeOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal, toItem: itemB, attribute: .leading, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal, toItem: itemB, attribute: .bottom, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal, toItem: itemB, attribute: .trailing, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        ])
    return collection
}
