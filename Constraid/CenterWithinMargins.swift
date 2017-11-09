// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension Constraid.View {
    /**
        Constrains the object's center to the vertical center of `item` within
        the margins of `item`

        - parameter item: The `item` you want to constrain the current object to
        - parameter offset: The amount to offset the object vertically from the
          center of the item
        - parameter direction: The vertical direction (.up|.down) to offset the
          object
        - parameter multiplier: The ratio altering the constraint relative to
          center of the item prior to the `offset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func middle(verticallyWithinMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        offsetDirection direction: Constraid.VerticalOffsetDirection = .down,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        var collection = Constraid.ConstraintCollection()
        switch direction {
        case .down:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerY,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerYWithinMargins, multiplier: multiplier,
                    constant: offset, priority: priority)
            )
        case .up:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerY,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerYWithinMargins, multiplier: multiplier,
                    constant: (offset * -1), priority: priority)
            )
        }
        collection.activate()
        return collection
    }

    /**
        Constrains the object's center to the horizontal center of `item` within
        the margins of `item`

        - parameter item: The `item` you want to constrain the current object to
        - parameter offset: The amount to offset the object horizontally from the
          center of the item
        - parameter direction: The horizontal direction (.right|.left) to offset the
          object
        - parameter multiplier: The ratio altering the constraint relative to
          center of the item prior to the `offset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func middle(horizontallyWithinMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        offsetDirection direction: Constraid.HorizontalOffsetDirection = .right,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        var collection = Constraid.ConstraintCollection()
        switch direction {
        case .right:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerX,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerXWithinMargins, multiplier: multiplier,
                    constant: offset, priority: priority)
            )
        case .left:
            collection.append(
                NSLayoutConstraint(item: self, attribute: .centerX,
                    relatedBy: .equal, toItem: item,
                    attribute: .centerXWithinMargins, multiplier: multiplier,
                    constant: (offset * -1), priority: priority)
            )
        }
        collection.activate()
        return collection
    }

    /**
        Constrains the object's center to the vertical & horizontal center of
        `item` within the margins of `item`

        - parameter item: The `item` you want to constrain the current object to
        - parameter offset: The amount to offset the object vertically & horizontally
          from the center of the item
        - parameter direction: The direction (.downAndright|.upAndleft) to offset the
          object
        - parameter multiplier: The ratio altering the constraint relative to
          center of the item prior to the `offset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func middle(withinMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        offsetDirection direction: Constraid.OffsetDirection = .downAndRight,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        switch direction {
        case .downAndRight:
            let constraints = middle(horizontallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .right,
                                multiplier: multiplier, priority: priority) +
                              middle(verticallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .down,
                                multiplier: multiplier, priority: priority)
            constraints.activate()
            return constraints
        case .upAndLeft:
            let constraints = middle(horizontallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .left,
                                multiplier: multiplier, priority: priority) +
                              middle(verticallyWithinMarginsOf: item,
                                offsetBy: offset, offsetDirection: .up,
                                multiplier: multiplier, priority: priority)
            constraints.activate()
            return constraints
        }
    }
}
