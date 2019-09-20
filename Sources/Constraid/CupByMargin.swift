// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
#if os(iOS)
import UIKit


/**
 Constrains the object's leading, top, and bottom edges to be equal to the
 leadingMargin, topMargin, and bottomMargin edges of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leadingMargin, topMargin, and bottomMargin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
public func cup(_ itemA: Constraid.View, byLeadingMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal, toItem: itemB, attribute: .topMargin, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal, toItem: itemB, attribute: .leadingMargin, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal, toItem: itemB, attribute: .bottomMargin, multiplier: multiplier, constant: (-1.0 * inset), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's trailing, top, and bottom edges to be equal to the
 trailingMargin, topMargin, and bottomMargin of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 trailingMargin, topMargin, and bottomMargin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
public func cup(_ itemA: Constraid.View, byTrailingMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal, toItem: itemB, attribute: .topMargin, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal, toItem: itemB, attribute: .trailingMargin, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal, toItem: itemB, attribute: .bottomMargin, multiplier: multiplier, constant: (-1.0 * inset), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's leading, top, and trailing edges to be equal to the
 leadingMargin, topMargin, and trailingMargin edges of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leadingMargin, topMargin, and trailingMargin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
public func cup(_ itemA: Constraid.View, byTopMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal, toItem: itemB, attribute: .leadingMargin, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal, toItem: itemB, attribute: .topMargin, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal, toItem: itemB, attribute: .trailingMargin, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        ])
    return collection
}

/**
 Constrains the object's leading, bottom, and trailing edges to be equal to the
 leadingMargin, bottomMargin, and trailingMargin of `itemB`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leadingMargin, bottomMargin, and trailingMargin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority these constraints use when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraints
 */
public func cup(_ itemA: Constraid.View, byBottomMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal, toItem: itemB, attribute: .leadingMargin, multiplier: multiplier, constant: inset, priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal, toItem: itemB, attribute: .bottomMargin, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal, toItem: itemB, attribute: .trailingMargin, multiplier: multiplier, constant: (-1.0 * inset), priority: priority),
        ])
    return collection
}

#endif
