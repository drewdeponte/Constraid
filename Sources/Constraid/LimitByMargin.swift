// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
#if os(iOS)
import UIKit

/**
 Constrains the object's leading edge to be limited by the
 leading margin of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading margin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byLeadingMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .leadingMargin, multiplier: multiplier,
                           constant: inset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's trailing edge to be limited by the
 trailing margin of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 trailing margin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byTrailingMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .trailing,
                           relatedBy: .lessThanOrEqual, toItem: itemB,
                           attribute: .trailingMargin, multiplier: multiplier,
                           constant: (inset * -1), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top edge to be limited by the
 top margin of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top margin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byTopMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0,
                insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .topMargin, multiplier: multiplier,
                           constant: inset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's bottom edge to be limited by the
 bottom margin of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 bottom margin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byBottomMarginOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .bottom,
                           relatedBy: .lessThanOrEqual, toItem: itemB,
                           attribute: .bottomMargin, multiplier: multiplier,
                           constant: (inset * -1), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top & bottom edges to be limited
 by the top & bottom margins of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top & bottom margin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byHorizontalMarginsOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.limit(itemA, byTopMarginOf: itemB, times: multiplier, insetBy: inset,
                           priority: priority) +
        Constraid.limit(itemA, byBottomMarginOf: itemB, times: multiplier, insetBy: inset,
              priority: priority)
    return collection
}

/**
 Constrains the object's leading & trailing edges to be limited
 by the leading & trailing margins of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading & trailing margin of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byVerticalMarginsOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.limit(itemA, byLeadingMarginOf: itemB, times: multiplier, insetBy: inset,
                           priority: priority) +
        Constraid.limit(itemA, byTrailingMarginOf: itemB, times: multiplier, insetBy: inset,
              priority: priority)
    return collection
}

/**
 Constrains the object's top, bottom, leading & trailing edges to be
 limited by the top, bottom, leading & trailing margins of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top, bottom, leading & trailing margin of the item prior to the
 `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limit(_ itemA: Constraid.View, byMarginsOf itemB: Any?,
                times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.limit(itemA, byTopMarginOf: itemB, times: multiplier, insetBy: inset,
                           priority: priority) +
        Constraid.limit(itemA, byBottomMarginOf: itemB, times: multiplier, insetBy: inset,
              priority: priority) +
        Constraid.limit(itemA, byLeadingMarginOf: itemB, times: multiplier, insetBy: inset,
              priority: priority) +
        Constraid.limit(itemA, byTrailingMarginOf: itemB, times: multiplier, insetBy: inset,
              priority: priority)
    return collection
}
#endif
