#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
    Enumeration of vertical offset directions
*/
public enum VerticalOffsetDirection {
    /// Vertically offset in the upward direction
    case up
    /// Vertically offset in the downward direction
    case down
}

/**
    Enumeration of horizontal offset directions
*/
public enum HorizontalOffsetDirection {
    /// Horizontally offset in the right direction
    case right
    /// Horizontally offset in the left direction
    case left
}

/**
    Enumeration of offset directions
*/
public enum OffsetDirection {
    /// Offset in the down and right direction
    case downAndRight
    /// Offset in the up and left direction
    case upAndLeft
}

/**
 Constrains the object's center to the vertical center of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 center of the item prior to the `offset` being applied.
 - parameter offset: The amount to offset the object vertically from the
 center of the item
 - parameter direction: The vertical direction (.up|.down) to offset the
 object
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func center(_ itemA: Constraid.View, verticallyWithin itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 offsetDirection direction: Constraid.VerticalOffsetDirection = .down,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {
    
    itemA.translatesAutoresizingMaskIntoConstraints = false
    var collection = Constraid.ConstraintCollection()
    switch direction {
    case .down:
        collection.append(
            NSLayoutConstraint(item: itemA, attribute: .centerY,
                               relatedBy: .equal, toItem: itemB, attribute: .centerY,
                               multiplier: multiplier, constant: offset, priority: priority)
        )
    case .up:
        collection.append(
            NSLayoutConstraint(item: itemA, attribute: .centerY,
                               relatedBy: .equal, toItem: itemB, attribute: .centerY,
                               multiplier: multiplier, constant: (offset * -1), priority: priority)
        )
    }
    return collection
}

/**
 Constrains the object's center to the horizontal center of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 center of the item prior to the `offset` being applied.
 - parameter offset: The amount to offset the object horizontally from the
 center of the item
 - parameter direction: The horizontal direction (.right|.left) to offset the
 object
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func center(_ itemA: Constraid.View, horizontallyWithin itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 offsetDirection direction: Constraid.HorizontalOffsetDirection = .right,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {
    
    itemA.translatesAutoresizingMaskIntoConstraints = false
    var collection = Constraid.ConstraintCollection()
    switch direction {
    case .right:
        collection.append(
            NSLayoutConstraint(item: itemA, attribute: .centerX,
                               relatedBy: .equal, toItem: itemB, attribute: .centerX,
                               multiplier: multiplier, constant: offset, priority: priority)
        )
    case .left:
        collection.append(
            NSLayoutConstraint(item: itemA, attribute: .centerX,
                               relatedBy: .equal, toItem: itemB, attribute: .centerX,
                               multiplier: multiplier, constant: (offset * -1), priority: priority)
        )
    }
    return collection
}

/**
 Constrains the object's center to the vertical & horizontal center of `item`
 
 - parameter itemA: The `item` you want to constrain in relation to another object
 - parameter itemB: The `item` you want to constrain itemA against
 - parameter multiplier: The ratio altering the constraint relative to
 center of the item prior to the `offset` being applied.
 - parameter offset: The amount to offset the object vertically & horizontally
 from the center of the item
 - parameter direction: The direction (.downAndright|.upAndleft) to offset the
 object
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 
 - returns: Constraint collection containing the generated constraint
 */
@discardableResult
public func center(_ itemA: Constraid.View, within itemB: Any?,
                 times multiplier: CGFloat = 1.0,
                 offsetBy offset: CGFloat = 0.0,
                 offsetDirection direction: Constraid.OffsetDirection = .downAndRight,
                 priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
    ) -> Constraid.ConstraintCollection {
    
    switch direction {
    case .downAndRight:
        let constraints = Constraid.center(itemA, horizontallyWithin: itemB, times: multiplier,
                                 offsetBy: offset, offsetDirection: .right,
                                 priority: priority) +
            Constraid.center(itemA, verticallyWithin: itemB, times: multiplier,
                   offsetBy: offset, offsetDirection: .down,
                   priority: priority)
        return constraints
    case .upAndLeft:
        let constraints = Constraid.center(itemA, horizontallyWithin: itemB,
                                          times: multiplier,
                                 offsetBy: offset, offsetDirection: .left,
                                 priority: priority) +
            Constraid.center(itemA, verticallyWithin: itemB,
                             times: multiplier,
                   offsetBy: offset, offsetDirection: .up,
                   priority: priority)
        return constraints
    }
}
