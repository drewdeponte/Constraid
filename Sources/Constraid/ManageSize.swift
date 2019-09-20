#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
 Set width of receiver using a constraint in auto-layout

 - parameter item: The `item` you want to constrain
 - parameter constant: The value to set the width to
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func setWidth(of item: Constraid.View, to constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .width,
                           relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Expand width of receiver using a constraint in auto-layout

 - parameter item: The `item` you want to constrain
 - parameter constant: The minimum width to expand from
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func expandWidth(of item: Constraid.View, from constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .width,
                           relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Limit width of receiver using a constraint in auto-layout

 - parameter item: The `item` you want to constrain
 - parameter constant: The maximum width to limit by
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limitWidth(of item: Constraid.View, by constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .width,
                           relatedBy: .lessThanOrEqual, toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Set height of receiver using a constraint in auto-layout

 - parameter item: The `item` you want to constrain
 - parameter constant: The value to set the height to
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func setHeight(of item: Constraid.View, to constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .height,
                           relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Expand height of receiver using a constraint in auto-layout

 - parameter item: The `item` you want to constrain
 - parameter constant: The minimum height to expand from
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func expandHeight(of item: Constraid.View, from constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .height,
                           relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Limit height of receiver using a constraint in auto-layout

 - parameter item: The `item` you want to constrain
 - parameter constant: The maximum height to limit by
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func limitHeight(of item: Constraid.View, by constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .height,
                           relatedBy: .lessThanOrEqual, toItem: nil, attribute: .notAnAttribute,
                           multiplier: 1.0, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Set width of receiver to width of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 the item
 - parameter constant: The amount to adjust the constraint by
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func matchWidth(of itemA: Constraid.View, to itemB: Any?,
                     times multiplier: CGFloat = 1.0,
                     by constant: CGFloat = 0.0,
                     priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .width,
                           relatedBy: .equal, toItem: itemB, attribute: .width,
                           multiplier: multiplier, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Set height of receiver to heigt of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 the item
 - parameter constant: The amount to adjust the constraint by
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func matchHeight(of itemA: Constraid.View, to itemB: Any?,
                      times multiplier: CGFloat = 1.0,
                      by constant: CGFloat = 0.0,
                      priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .height,
                           relatedBy: .equal, toItem: itemB, attribute: .height,
                           multiplier: multiplier, constant: constant, priority: priority)
        ])
    return collection
}

/**
 Add constraint to receiver declaring it square

 - parameter item: The `item` you want to constrain
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func equalize(_ item: Constraid.View,
    priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {

    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .width,
                           relatedBy: .equal, toItem: item, attribute: .height,
                           multiplier: 1.0, constant: 0.0, priority: priority)
        ])
    return collection
}

/**
 Set aspect ratio of receiver using a constraint in auto-layout

 - parameter item: The `item` you want to constrain
 - parameter size: The CGSize of your height and width used to calculate the ratio
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
public func setAspectRatio(of item: Constraid.View, toSize size: CGSize, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    let ratio = size.width/size.height as CGFloat
    item.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: item, attribute: .width,
                           relatedBy: .equal, toItem: item, attribute: .height,
                           multiplier: ratio, constant: 0, priority: priority)
        ])
    return collection
}
