#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Constrains the object's width to be greater than or equal to the width
     of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     width of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expanding(fromWidthOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy constant: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.expand(self.base, fromWidthOf: item, times: multiplier, offsetBy: constant, priority: priority))
        return self
    }
    
    /**
     Constrains the object's height to be greater than or equal to the height
     of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     height of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: ConstraidProxy containing the generated constraint
     */
    public func expanding(fromHeightOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy constant: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.expand(self.base, fromHeightOf: item, times: multiplier, offsetBy: constant, priority: priority))
        return self
    }
}
