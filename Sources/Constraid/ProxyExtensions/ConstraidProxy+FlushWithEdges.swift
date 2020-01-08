#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Constrains the object's leading edge to the leading edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading edge of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the leading
     edge of the item
      - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withLeadingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.flush(self.base, withLeadingEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's trailing edge to the trailing edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     trailing edge of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the trailing
     edge of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withTrailingEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.flush(self.base, withTrailingEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top edge to the top edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     top edge of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the top
     edge of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withTopEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.flush(self.base, withTopEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's bottom edge to the bottom edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     bottom edge of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the bottom
     edge of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withBottomEdgeOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.flush(self.base, withBottomEdgeOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading & trailing edges to the leading &
     trailing edges of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading & trailing edges of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the leading &
     trailing edges of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withVerticalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.flush(self.base, withVerticalEdgesOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top & bottom edges to the top & bottom edges of
     `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     top & bottom edges of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the top &
     bottom edges of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withHorizontalEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.flush(self.base, withHorizontalEdgesOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading, trailing, top & bottom edge to the
     leading, trailing, top & bottom edge of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading, trailing, top & bottom edges of the item prior to the `inset`
     being applied.
     - parameter inset: The amount to inset the object from the leading,
     trailing, top & bottom edges of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withEdgesOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.flush(self.base, withEdgesOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
}
