#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Constrains the object's leading edge to be limited by the
     leading edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byLeadingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byLeadingEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's trailing edge to be limited by the
     trailing edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     trailing edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byTrailingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byTrailingEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top edge to be limited by the
     top edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     top edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byTopEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byTopEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's bottom edge to be limited by the
     bottom edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     bottom edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byBottomEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byBottomEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top & bottom edges to be limited by
     the top & bottom edges of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     top & bottom edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byHorizontalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byHorizontalEdgesOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading & trailing edges to be limited by
     the leading & trailing edges of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading & trailing edge of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byVerticalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byVerticalEdgesOf: item, times: multiplier, insetBy: inset, priority: priority))
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byVerticalEdgesOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top, bottom, leading & trailing edges to be
     limited by the top, bottom, leading & trailing edges of
     `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     top, bottom, leading & trailing edge of the item prior to the
     `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byEdgesOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
}
