// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.

#if os(iOS)
import UIKit

extension ConstraidProxy {
    /**
     Constrains the object's leading edge to expand outward from the
     leading margin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromLeadingMarginOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromLeadingMarginOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's trailing edge to expand outward from the
     trailing margin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     trailing margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraint collection containing the generated constraint
     */
    public func expand(fromTrailingMarginOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromTrailingMarginOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top edge to expand outward from the
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
    public func expand(fromTopMarginOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromTopMarginOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's bottom edge to expand outward from the
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
    public func expand(fromBottomMarginOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromBottomMarginOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top & bottom edges to expand outward from
     the top & bottom margin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     top & bottom margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromHorizontalMarginsOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromHorizontalMarginsOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading & trailing edges to expand outward
     from the leading & trailing margin of `item`

     - parameter item: The `item` you want to constrain base against
     - parameter multiplier: The ratio altering the constraint relative to
     leading & trailing margin of the item prior to the `constant` being applied.
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromVerticalMarginsOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromVerticalMarginsOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top, bottom, leading & trailing edges to expand
     outward from the top, bottom, leading & trailing margin of
     `item`

     - parameter item: The `item` you want to constrain base against
     - parameter constant: The amount to add to the constraint equation
     after the multiplier.
     - parameter multiplier: The ratio altering the constraint relative to
     top, bottom, leading & trailing margin of the item prior to the
     `constant` being applied.
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints

     - returns: Constraid proxy containing the generated constraint
     */
    public func expand(fromMarginsOf item: Any?, times multiplier: CGFloat = 1.0, offsetBy offset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.expand(self.base, fromMarginsOf: item, times: multiplier, offsetBy: offset, priority: priority))
        return self
    }
}

#endif
