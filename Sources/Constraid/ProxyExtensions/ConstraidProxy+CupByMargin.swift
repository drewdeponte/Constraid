// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
#if os(iOS)
import UIKit

extension ConstraidProxy {
    /**
     Constrains the object's leading, top, and bottom edges to be equal to the
     leadingMargin, topMargin, and bottomMargin edges of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leadingMargin, topMargin, and bottomMargin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byLeadingMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byLeadingMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's trailing, top, and bottom edges to be equal to the
     trailingMargin, topMargin, and bottomMargin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     trailingMargin, topMargin, and bottomMargin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byTrailingMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byTrailingMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading, top, and trailing edges to be equal to the
     leadingMargin, topMargin, and trailingMargin edges of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leadingMargin, topMargin, and trailingMargin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byTopMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byTopMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading, bottom, and trailing edges to be equal to the
     leadingMargin, bottomMargin, and trailingMargin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leadingMargin, bottomMargin, and trailingMargin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority these constraints use when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraints
     */
    public func cup(byBottomMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.cup(self.base, byBottomMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
}

#endif
