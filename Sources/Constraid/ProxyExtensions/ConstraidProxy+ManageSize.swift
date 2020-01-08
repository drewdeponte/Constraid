#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
    Set width of receiver using a constraint in auto-layout

    - parameter constant: The value to set the width to
    - parameter priority: The priority this constraint uses when being
    evaluated against other constraints

    - returns: Constraid proxy containing the generated constraint
    */
    public func setWidth(to constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.setWidth(of: self.base, to: constant, priority: priority))
        return self
    }
    
    /**
    Expand width of receiver using a constraint in auto-layout

    - parameter constant: The minimum width to expand from
    - parameter priority: The priority this constraint uses when being
    evaluated against other constraints

    - returns: Constraid proxy containing the generated constraint
    */
    public func expandWidth(from constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expandWidth(of: self.base, from: constant, priority: priority))
        return self
    }
    
    /**
    Limit width of receiver using a constraint in auto-layout

    - parameter constant: The maximum width to limit by
    - parameter priority: The priority this constraint uses when being
    evaluated against other constraints

    - returns: Constraid proxy containing the generated constraint
    */
    public func limitWidth(by constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.limitWidth(of: self.base, by: constant, priority: priority))
        return self
    }
    
    /**
     Set height of receiver using a constraint in auto-layout

     - parameter item: The `item` you want to constrain
     - parameter constant: The value to set the height to
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func setHeight(to constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.setHeight(of: self.base, to: constant, priority: priority))
        return self
    }
    
    /**
     Expand height of receiver using a constraint in auto-layout

     - parameter constant: The minimum height to expand from
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expandHeight(from constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expandHeight(of: self.base, from: constant, priority: priority))
        return self
    }
    
    /**
     Limit height of receiver using a constraint in auto-layout

     - parameter constant: The maximum height to limit by
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limitHeight(by constant: CGFloat, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.limitHeight(of: self.base, by: constant, priority: priority))
        return self
    }
    
    /**
     Set width of receiver to width of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     the item
     - parameter constant: The amount to adjust the constraint by
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func matchWidth(to item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.matchWidth(of: self.base, to: item, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Set height of receiver to heigt of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     the item
     - parameter constant: The amount to adjust the constraint by
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func matchHeight(to item: Any?,
        times multiplier: CGFloat = 1.0,
        by constant: CGFloat = 0.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.matchHeight(of: self.base, to: item, times: multiplier, by: constant, priority: priority))
        return self
    }
    
    /**
     Add constraint to receiver declaring it square

     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func equalize(priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.equalize(self.base, priority: priority))
        return self
    }
    
    /**
     Set aspect ratio of receiver using a constraint in auto-layout

     - parameter size: The CGSize of your height and width used to calculate the ratio
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func setAspectRatio(toSize size: CGSize, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.setAspectRatio(of: self.base, toSize: size, priority: priority))
        return self
    }
}
