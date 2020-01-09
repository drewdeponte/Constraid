// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
#if os(iOS)
import UIKit

extension ConstraidProxy {
    /**
     Constrains the object's leading edge to the leading margin of `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading margin of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the leading
     margin of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withLeadingMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.flush(self.base, withLeadingMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }

    /**
     Constrains the object's trailing edge to the trailing margin of `item`
     
     - parameter itemB: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     trailing margin of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the trailing
     margin of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withTrailingMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.flush(self.base, withTrailingMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top edge to the top margin of `item`
     
     - parameter itemB: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     top margin of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the top
     margin of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withTopMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.flush(self.base, withTopMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's bottom edge to the bottom margin of `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     bottom margin of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the bottom
     margin of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withBottomMarginOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.flush(self.base, withBottomMarginOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's top & bottom edge to the top & bottom margins of
     `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     top & bottom margins of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the top & bottom
     margins of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withVerticalMarginsOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.flush(self.base, withVerticalMarginsOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading & trailing edge to the leading &
     trailing margins of `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading & trailing margins of the item prior to the `inset` being applied.
     - parameter inset: The amount to inset the object from the leading & trailing
     margins of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withHorizontalMarginsOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.flush(self.base, withHorizontalMarginsOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
    
    /**
     Constrains the object's leading, trailing, top, & bottom  edge to the
     leading, trailing, top & bottom  margins of `item`
     
     - parameter item: The `item` you want to constrain itemA against
     - parameter multiplier: The ratio altering the constraint relative to
     leading, trailing, top & bottom  margins of the item prior to the
     `inset` being applied.
     - parameter inset: The amount to inset the object from the leading,
     trailing, top and bottom margins of the item
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     
     - returns: Constraid proxy containing the generated constraint
     */
    public func flush(withMarginsOf item: Any?, times multiplier: CGFloat = 1.0, insetBy inset: CGFloat = 0.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        self.constraintCollection.append(contentsOf: Constraid.flush(self.base, withMarginsOf: item, times: multiplier, insetBy: inset, priority: priority))
        return self
    }
}

#endif
