#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
 Constrains the object's width to be greater than or equal to the width
 of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 width of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func expand(_ itemA: Constraid.View, fromWidthOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy constant: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .width,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .width, multiplier: multiplier,
                           constant: constant, priority: priority)
        ])
    return collection
}

/**
 Constrains the object's height to be greater than or equal to the height
 of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 height of the item prior to the `constant` being applied.
 - parameter constant: The amount to add to the constraint equation
 after the multiplier.
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func expand(_ itemA: Constraid.View, fromHeightOf itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy constant: CGFloat = 0.0,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .height,
                           relatedBy: .greaterThanOrEqual, toItem: itemB,
                           attribute: .height, multiplier: multiplier,
                           constant: constant, priority: priority)
        ])
    return collection
}
