// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
#if os(iOS)
import UIKit

extension ConstraidProxy {
    /**
     Constrains the object's center to the vertical center of `item` within
     the margins of `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     center of the item prior to the `offset` being applied.
     - parameter offset: The amount to offset the object vertically from the
     center of the item
     - parameter direction: The vertical direction (.up|.down) to offset the
     object
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func center(verticallyWithinMarginsOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, offsetDirection direction: Constraid.VerticalOffsetDirection = .down, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.center(self.base, verticallyWithinMarginsOf: item, times: multiplier, offsetBy: offset, offsetDirection: direction, priority: priority))
        return self
    }
    
    /**
     Constrains the object's center to the horizontal center of `item` within
     the margins of `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     center of the item prior to the `offset` being applied.
     - parameter offset: The amount to offset the object horizontally from the
     center of the item
     - parameter direction: The horizontal direction (.right|.left) to offset the
     object
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func center(horizontallyWithinMarginsOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, offsetDirection direction: Constraid.HorizontalOffsetDirection = .right, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.center(self.base, horizontallyWithinMarginsOf: item, times: multiplier, offsetBy: offset, offsetDirection: direction, priority: priority))
        return self
    }
    
    /**
     Constrains the object's center to the vertical & horizontal center of
     `item` within the margins of `item`
     
     - parameter item: The `item` you want to constrain itemA against
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
    public func center(withinMarginsOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, offsetDirection direction: Constraid.OffsetDirection = .downAndRight, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.center(self.base, withinMarginsOf: item, times: multiplier, offsetBy: offset, offsetDirection: direction, priority: priority))
        return self
    }
}

#endif
