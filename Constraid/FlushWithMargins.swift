// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

/**
 Constrains the object's leading edge to the leading margin of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading margin of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the leading
 margin of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
public func flush(_ itemA: Constraid.View, withLeadingMarginOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    
    itemA.translatesAutoresizingMaskIntoConstraints = false
    let constraints = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .leading, relatedBy: .equal,
                           toItem: itemB, attribute: .leadingMargin, multiplier: multiplier,
                           constant: inset, priority: priority)
        ])
    return constraints
}

/**
 Constrains the object's trailing edge to the trailing margin of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 trailing margin of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the trailing
 margin of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
public func flush(_ itemA: Constraid.View, withTrailingMarginOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    
    itemA.translatesAutoresizingMaskIntoConstraints = false
    let constraints = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .trailing, relatedBy: .equal,
                           toItem: itemB, attribute: .trailingMargin, multiplier: multiplier,
                           constant: (-1.0 * inset), priority: priority)
        ])
    return constraints
}

/**
 Constrains the object's top edge to the top margin of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top margin of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the top
 margin of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
public func flush(_ itemA: Constraid.View, withTopMarginOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    
    itemA.translatesAutoresizingMaskIntoConstraints = false
    let constraints = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .top, relatedBy: .equal,
                           toItem: itemB, attribute: .topMargin, multiplier: multiplier,
                           constant: inset, priority: priority)
        ])
    return constraints
}

/**
 Constrains the object's bottom edge to the bottom margin of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 bottom margin of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the bottom
 margin of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
public func flush(_ itemA: Constraid.View, withBottomMarginOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    
    itemA.translatesAutoresizingMaskIntoConstraints = false
    let constraints = Constraid.ConstraintCollection([
        NSLayoutConstraint(item: itemA, attribute: .bottom, relatedBy: .equal,
                           toItem: itemB, attribute: .bottomMargin, multiplier: multiplier,
                           constant: (-1.0 * inset), priority: priority)
        ])
    return constraints
}

/**
 Constrains the object's top & bottom edge to the top & bottom margins of
 `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 top & bottom margins of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the top & bottom
 margins of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
public func flush(_ itemA: Constraid.View, withVerticalMarginsOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    
    let constraints = Constraid.flush(itemA, withLeadingMarginOf: itemB, times: multiplier, insetBy: inset,
                            priority: priority) +
        Constraid.flush(itemA, withTrailingMarginOf: itemB, times: multiplier, insetBy: inset, priority: priority)
    return constraints
}

/**
 Constrains the object's leading & trailing edge to the leading &
 trailing margins of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading & trailing margins of the item prior to the `inset` being applied.
 - parameter inset: The amount to inset the object from the leading & trailing
 margins of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
public func flush(_ itemA: Constraid.View, withHorizontalMarginsOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    
    let constraints = Constraid.flush(itemA, withTopMarginOf: itemB, times: multiplier, insetBy: inset,
                            priority: priority) +
        Constraid.flush(itemA, withBottomMarginOf: itemB, times: multiplier, insetBy: inset,
               priority: priority)
    return constraints
}

/**
 Constrains the object's leading, trailing, top, & bottom  edge to the
 leading, trailing, top & bottom  margins of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 leading, trailing, top & bottom  margins of the item prior to the
 `inset` being applied.
 - parameter inset: The amount to inset the object from the leading,
 trailing, top and bottom margins of the item
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
public func flush(_ itemA: Constraid.View, withMarginsOf itemB: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {
    
    let constraints = Constraid.flush(itemA, withHorizontalMarginsOf: itemB, times: multiplier, insetBy: inset,
                            priority: priority) +
        Constraid.flush(itemA, withVerticalMarginsOf: itemB, times: multiplier, insetBy: inset,
              priority: priority)
    return constraints
}
