#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Constrains the object's leading, top, and bottom edges to be equal to the
     leading, top, and bottom edges of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading, top, and bottom edges of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byLeadingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byLeadingEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's trailing, top, and bottom edges to be equal to the
     trailing, top, and bottom edges of `item`
     
     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     trailing, top, and bottom edges of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byTrailingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byTrailingEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading, top, and trailing edges to be equal to the
     leading, top, and trailing edges of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading, top, and trailing edges of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byTopEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byTopEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading, bottom, and trailing edges to be equal to the
     leading, bottom, and trailing edges of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading, bottom, and trailing edges of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byBottomEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byBottomEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
}
