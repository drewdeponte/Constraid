#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Constrains the object's center to the vertical center of `item`
     
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
    public func center(verticallyWithin item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, offsetDirection direction: Constraid.VerticalOffsetDirection = .down, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.center(self.base, verticallyWithin: item, times: multiplier, offsetBy: offset, offsetDirection: direction, priority: priority))
        return self
    }
    
    /**
     Constrains the object's center to the horizontal center of `item`
     
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
    public func center(horizontallyWithin item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, offsetDirection direction: Constraid.HorizontalOffsetDirection = .right, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.center(self.base, horizontallyWithin: item, times: multiplier, offsetBy: offset, offsetDirection: direction, priority: priority))
        return self
    }
    
    /**
     Constrains the object's center to the vertical & horizontal center of `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     center of the item prior to the `offset` being applied.
     - parameter offset: The amount to offset the object vertically & horizontally
     from the center of the item
     - parameter direction: The direction (.downAndright|.upAndleft) to offset the
     object
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func center(within item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, offsetDirection direction: Constraid.OffsetDirection = .downAndRight, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.center(self.base, within: item, times: multiplier, offsetBy: offset, offsetDirection: direction, priority: priority))
        return self
    }
}
