#if os(iOS)
    import UIKit

extension ConstraidProxy {
    /**
     Constrains the receiver's leading edge to the trailing margin of
     `item`

     - parameter itemB: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the trailing margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's leading
     edge from the trailing margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated
     constraint
     */
    public func follow(theTrailingMarginOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.follow(theTrailingMarginOf: item, with: self.base, times: multiplier, by: constant, priority: priority))
        return self
    }

    /**
     Constrains the receiver's trailing edge to the leading margin of
     `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the leading margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's trailing
     edge from the leading margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated
     constraint
     */
    public func precede(theLeadingMarginOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.precede(theLeadingMarginOf: item, with: self.base, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's bottom edge to the top margin of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the top margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's bottom
     edge from the top margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated
     constraint
     */
    public func above(theTopMarginOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.set(self.base, aboveTheTopMarginOf: item, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's top edge to the bottom margin of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the bottom margin of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's top
     edge from the bottom margin of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated
     constraint
     */
    public func below(theBottomMarginOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.set(self.base, belowTheBottomMarginOf: item, times: multiplier, by: constant, priority: priority))
        return self
    }
}
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Constrains the receiver's trailing edge to the centerX of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the leading edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's trailing
     edge from the leading edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func precede(theCenterOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.precede(theCenterOf: item, with: self.base, times: multiplier, by: constant, priority: priority))
        return self
    }

    /**
     Constrains the receiver's leading edge to the centerX of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the trailing edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's leading
     edge from the trailing edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func follow(theCenterOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.follow(theCenterOf: item, with: self.base, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's leading edge to the trailing edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the trailing edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's leading
     edge from the trailing edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func follow(theTrailingEdgeOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.follow(theTrailingEdgeOf: item, with: self.base, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's trailing edge to the leading edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the leading edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's trailing
     edge from the leading edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func precede(theLeadingEdgeOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.precede(theLeadingEdgeOf: item, with: self.base, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's bottom edge to the top edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the top edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's bottom
     edge from the top edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func above(theTopEdgeOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.set(self.base, aboveTheTopEdgeOf: item, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's bottom edge to the centerY of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the top edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's bottom
     edge from the top edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func above(theCenterOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.set(self.base, aboveTheCenterOf: item, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's top edge to the bottom edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the bottom edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's top
     edge from the bottom edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func below(theBottomEdgeOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.set(self.base, belowTheBottomEdgeOf: item, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the receiver's top edge to the centerY of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative
     to the bottom edge of the item prior to the constant being
     applied
     - parameter constant: The amount to offset the object's top
     edge from the bottom edge of the `item`
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func below(theCenterOf item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.set(self.base, belowTheCenterOf: item, times: multiplier, by: constant, priority: priority))
        return self
    }
}
