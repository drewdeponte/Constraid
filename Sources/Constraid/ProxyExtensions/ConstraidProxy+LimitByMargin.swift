// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
#if os(iOS)
import UIKit

extension ConstraidProxy {
    /**
     Constrains the object's leading edge to be limited by the
     leading margin of `item`

     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byLeadingMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byLeadingMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's trailing edge to be limited by the
     trailing margin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     trailing margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byTrailingMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byTrailingMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top edge to be limited by the
     top margin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     top margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byTopMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byTopMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's bottom edge to be limited by the
     bottom margin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     bottom margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byBottomMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byBottomMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top & bottom edges to be limited
     by the top & bottom margins of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     top & bottom margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byHorizontalMarginsOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byHorizontalMarginsOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading & trailing edges to be limited
     by the leading & trailing margins of `item`

     - parameter itemB: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading & trailing margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byVerticalMarginsOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byVerticalMarginsOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top, bottom, leading & trailing edges to be
     limited by the top, bottom, leading & trailing margins of
     `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     top, bottom, leading & trailing margin of the item prior to the
     `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func limit(byMarginsOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        constraintCollection.append(contentsOf: Constraid.limit(self.base, byMarginsOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
}

#endif
