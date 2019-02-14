#if os(iOS)
    import UIKit

    /**
     Constrains the receiver's leading edge to the trailing margin of
     `item`

     - parameter itemA: The `item` you want to constrain in relation to another object
     - parameter itemB: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the trailing margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's leading
     edge from the trailing margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraint collection containing the generated
     constraint
     */
    @discardableResult
    public func follow(theTrailingMarginOf itemB: Any?,
                      with itemA: Constraid.View,
                      times multiplier: CGFloat = 1.0,
                      by constant: CGFloat = 0.0,
                      priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        itemA.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: itemA, attribute: .leading,
                               relatedBy: .equal, toItem: itemB,
                               attribute: .trailingMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
        return collection
    }

    /**
     Constrains the receiver's trailing edge to the leading margin of
     `item`

     - parameter itemA: The `item` you want to constrain in relation to another object
     - parameter itemB: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the leading margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's trailing
     edge from the leading margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraint collection containing the generated
     constraint
     */
    @discardableResult
    public func precede(theLeadingMarginOf itemB: Any?,
                       with itemA: Constraid.View,
                       times multiplier: CGFloat = 1.0,
                       by constant: CGFloat = 0.0,
                       priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        itemA.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: itemA, attribute: .trailing,
                               relatedBy: .equal, toItem: itemB, attribute: .leadingMargin,
                               multiplier: multiplier, constant: (-1.0 * constant),
                               priority: priority)
            ])
        return collection
    }

    /**
     Constrains the receiver's bottom edge to the top margin of
     `item`

     - parameter itemA: The `item` you want to constrain in relation to another object
     - parameter itemB: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the top margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's bottom
     edge from the top margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraint collection containing the generated
     constraint
     */
    @discardableResult
    public func set(_ itemA: Constraid.View, aboveTheTopMarginOf itemB: Any?,
                   times multiplier: CGFloat = 1.0,
                   by constant: CGFloat = 0.0,
                   priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        itemA.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: itemA, attribute: .bottom,
                               relatedBy: .equal, toItem: itemB,
                               attribute: .topMargin, multiplier: multiplier,
                               constant: (-1.0 * constant), priority: priority)
            ])
        return collection
    }

    /**
     Constrains the receiver's top edge to the bottom margin of
     `item`

     - parameter itemA: The `item` you want to constrain in relation to another object
     - parameter itemB: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the bottom margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's top
     edge from the bottom margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraint collection containing the generated
     constraint
     */
    @discardableResult
    public func set(_ itemA: Constraid.View, belowTheBottomMarginOf itemB: Any?,
                   times multiplier: CGFloat = 1.0,
                   by constant: CGFloat = 0.0,
                   priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        itemA.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: itemA, attribute: .top,
                               relatedBy: .equal, toItem: itemB,
                               attribute: .bottomMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
        return collection
    }
#else
    import AppKit
#endif

/**
 Constrains the receiver's leading edge to the trailing edge of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative
 to the trailing edge of the item prior to the constant being
 applied
 - parameter constant: The amount to offset the object's leading
 edge from the trailing edge of the `item`
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated
 constraint
 */
@discardableResult
public func follow(theTrailingEdgeOf itemB: Any?,
                  with itemA: Constraid.View,
                  times multiplier: CGFloat = 1.0,
                  by constant: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading,
                           relatedBy: .equal, toItem: itemB, attribute: .trailing,
                           multiplier: multiplier, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Constrains the receiver's trailing edge to the leading edge of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative
 to the leading edge of the item prior to the constant being
 applied
 - parameter constant: The amount to offset the object's trailing
 edge from the leading edge of the `item`
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated
 constraint
 */
@discardableResult
public func precede(theLeadingEdgeOf itemB: Any?,
                   with itemA: Constraid.View,
                   times multiplier: CGFloat = 1.0,
                   by constant: CGFloat = 0.0,
                   priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .trailing,
                           relatedBy: .equal, toItem: itemB, attribute: .leading,
                           multiplier: multiplier, constant: (-1.0 * constant), priority: priority)
        ])
    return collection
}

/**
 Constrains the receiver's bottom edge to the top edge of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative
 to the top edge of the item prior to the constant being
 applied
 - parameter constant: The amount to offset the object's bottom
 edge from the top edge of the `item`
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated
 constraint
 */
@discardableResult
public func set(_ itemA: Constraid.View, aboveTheTopEdgeOf itemB: Any?,
               times multiplier: CGFloat = 1.0,
               by constant: CGFloat = 0.0,
               priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .bottom,
                           relatedBy: .equal, toItem: itemB, attribute: .top,
                           multiplier: multiplier, constant: (-1.0 * constant),
                           priority: priority)
        ])
    return collection
}

/**
 Constrains the receiver's top edge to the bottom edge of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative
 to the bottom edge of the item prior to the constant being
 applied
 - parameter constant: The amount to offset the object's top
 edge from the bottom edge of the `item`
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated
 constraint
 */
@discardableResult
public func set(_ itemA: Constraid.View, belowTheBottomEdgeOf itemB: Any?,
               times multiplier: CGFloat = 1.0,
               by constant: CGFloat = 0.0,
               priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal,
                           toItem: itemB, attribute: .bottom, multiplier: multiplier,
                           constant: constant, priority: priority)
        ])
    return collection
}
