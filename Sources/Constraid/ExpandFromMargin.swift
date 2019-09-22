// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.

#if os(iOS)
import UIKit

/**
 Constrains the object's leading edge to expand outward from the
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
public func expand(_ itemA: Constraid.View, fromLeadingMarginOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading,
                           relatedBy: .lessThanOrEqual, toItem: itemB,
                           attribute: .leadingMargin, multiplier: multiplier,
                           constant: (offset * -1), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's trailing edge to expand outward from the
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
public func expand(_ itemA: Constraid.View, fromTrailingMarginOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .trailing,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .trailingMargin, multiplier: multiplier,
                           constant: offset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top edge to expand outward from the
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
public func expand(_ itemA: Constraid.View, fromTopMarginOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top,
                           relatedBy: .lessThanOrEqual, toItem: itemB,
                           attribute: .topMargin, multiplier: multiplier,
                           constant: (offset * -1), priority: priority)
        ])
    return collection
}

/**
 Constrains the object's bottom edge to expand outward from the
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
public func expand(_ itemA: Constraid.View, fromBottomMarginOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .bottom,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .bottomMargin, multiplier: multiplier,
                           constant: offset, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's top & bottom edges to expand outward from
 the top & bottom margin of `item`

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
public func expand(_ itemA: Constraid.View, fromHorizontalMarginsOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.expand(itemA, fromTopMarginOf: itemB, times: multiplier, offsetBy: offset,
                            priority: priority) +
        Constraid.expand(itemA, fromBottomMarginOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority)
    return collection
}

/**
 Constrains the object's leading & trailing edges to expand outward
 from the leading & trailing margin of `item`

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
public func expand(_ itemA: Constraid.View, fromVerticalMarginsOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.expand(itemA, fromLeadingMarginOf: itemB, times: multiplier, offsetBy: offset,
                            priority: priority) +
        Constraid.expand(itemA, fromTrailingMarginOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority)
    return collection
}

/**
 Constrains the object's top, bottom, leading & trailing edges to expand
 outward from the top, bottom, leading & trailing margin of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter multiplier: The ratio altering the constraint relative to
 top, bottom, leading & trailing margin of the item prior to the
 `constant` being applied.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func expand(_ itemA: Constraid.View, fromMarginsOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    let collection = Constraid.expand(itemA, fromTopMarginOf: itemB, times: multiplier, offsetBy: offset,
                            priority: priority) +
        Constraid.expand(itemA, fromBottomMarginOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority) +
        Constraid.expand(itemA, fromLeadingMarginOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority) +
        Constraid.expand(itemA, fromTrailingMarginOf: itemB, times: multiplier, offsetBy: offset,
               priority: priority)
    return collection
}

#endif
