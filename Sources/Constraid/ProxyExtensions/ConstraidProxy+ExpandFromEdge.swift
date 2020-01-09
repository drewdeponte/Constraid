#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Constrains the object's leading edge to expand outward from the leading edge of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromLeadingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromLeadingEdgeOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's trailing edge to expand outward from the
     leading edge of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     trailing edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromTrailingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromTrailingEdgeOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top edge to outward from the
     top edge of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     top edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromTopEdgeOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromTopEdgeOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's bottom edge to outward from the
     bottom edge of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     bottom edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromBottomEdgeOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromBottomEdgeOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top & bottom edges to expand outward from the
     top & bottom edges of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     top & bottom edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromHorizontalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromHorizontalEdgesOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading & trailing edges to expand outward from
     the leading & trailing edge of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading & trailing edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromVerticalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromVerticalEdgesOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top, bottom, leading & trailing edges to expand
     outward from the top, bottom, leading & trailing edge of
     `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     top, bottom, leading & trailing edge of the item prior to the
     `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromEdgesOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromEdgesOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
}
