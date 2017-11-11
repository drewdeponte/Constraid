#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
 Constrains the object's leading edge to the leading edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading edge of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the leading
 edge of the item
  - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func flush(_ itemA: Constraid.View, withLeadingEdgeOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal,
                           toItem: itemB, attribute: .leading, multiplier: multiplier,
                           constant: inset, priority: priority)
        ])
    collection.activate()
    return collection
}

/**
 Constrains the object's trailing edge to the trailing edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 trailing edge of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the trailing
 edge of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func flush(_ itemA: Constraid.View, withTrailingEdgeOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let collection = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal,
                           toItem: itemB, attribute: .trailing, multiplier: multiplier,
                           constant: (-1.0 * inset), priority: priority)
        ])
    collection.activate()
    return collection
}

/**
 Constrains the object's top edge to the top edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top edge of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the top
 edge of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func flush(_ itemA: Constraid.View, withTopEdgeOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let constraints = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal,
                           toItem: itemB, attribute: .top, multiplier: multiplier,
                           constant: inset, priority: priority)
        ])
    constraints.activate()
    return constraints
}

/**
 Constrains the object's bottom edge to the bottom edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 bottom edge of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the bottom
 edge of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func flush(_ itemA: Constraid.View, withBottomEdgeOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    itemA.translatesAutoresizingMaskIntoConstraints = false
    let constraints = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal,
                           toItem: itemB, attribute: .bottom, multiplier: multiplier,
                           constant: (-1.0 * inset), priority: priority)
        ])
    constraints.activate()
    return constraints
}

/**
 Constrains the object's leading & trailing edges to the leading &
 trailing edges of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading & trailing edges of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the leading &
 trailing edges of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func flush(_ itemA: Constraid.View, withVerticalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    let constraints = Constraid.flush(itemA, withLeadingEdgeOf: item, times: multiplier, insetBy: inset,
                                      priority: priority) +
        Constraid.flush(itemA, withTrailingEdgeOf: item, times: multiplier, insetBy: inset, priority: priority)
    constraints.activate()
    return constraints
}

/**
 Constrains the object's top & bottom edges to the top & bottom edges of
 `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top & bottom edges of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the top &
 bottom edges of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func flush(_ itemA: Constraid.View, withHorizontalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    let constraints = Constraid.flush(itemA, withTopEdgeOf: item, times: multiplier, insetBy: inset,
                                      priority: priority) +
        Constraid.flush(itemA, withBottomEdgeOf: item, times: multiplier, insetBy: inset,
                        priority: priority)
    constraints.activate()
    return constraints
}

/**
 Constrains the object's leading, trailing, top & bottom edge to the
 leading, trailing, top & bottom edge of `item`

 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading, trailing, top & bottom edges of the item prior to the `inset`
 being applied.
 - parameter inset: The amount to inset the object from the leading,
 trailing, top & bottom edges of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints

 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func flush(_ itemA: Constraid.View, withEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0,
                  priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

    let constraints = Constraid.flush(itemA, withHorizontalEdgesOf: item, times: multiplier, insetBy: inset,
                                      priority: priority) +
        Constraid.flush(itemA, withVerticalEdgesOf: item, times: multiplier, insetBy: inset,
                        priority: priority)
    constraints.activate()
    return constraints
}
