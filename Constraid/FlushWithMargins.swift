// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension Constraid.View {
    /**
        Constrains the object's leading edge to the leading margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the leading
          margin of the item
        - parameter multiplier: The ratio altering the constraint relative to
          leading margin of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withLeadingMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .leadingMargin, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's trailing edge to the trailing margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the trailing
          margin of the item
        - parameter multiplier: The ratio altering the constraint relative to
          trailing margin of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withTrailingMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .trailingMargin, multiplier: multiplier,
                               constant: (-1.0 * inset), priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's top edge to the top margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the top
          margin of the item
        - parameter multiplier: The ratio altering the constraint relative to
          top margin of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withTopMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's bottom edge to the bottom margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the bottom
          margin of the item
        - parameter multiplier: The ratio altering the constraint relative to
          bottom margin of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withBottomMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .bottomMargin, multiplier: multiplier,
                               constant: (-1.0 * inset), priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's top & bottom edge to the top & bottom margins of
        `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the top & bottom
          margins of the item
        - parameter multiplier: The ratio altering the constraint relative to
          top & bottom margins of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withVerticalMarginsOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

        let constraints = flush(withLeadingMarginOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          flush(withTrailingMarginOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's leading & trailing edge to the leading &
        trailing margins of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the leading & trailing
          margins of the item
        - parameter multiplier: The ratio altering the constraint relative to
          leading & trailing margins of the item prior to the `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withHorizontalMarginsOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

        let constraints = flush(withTopMarginOf: item, insetBy: inset, multiplier: multiplier,
                                priority: priority) +
                          flush(withBottomMarginOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    /**
        Constrains the object's leading, trailing, top, & bottom  edge to the
        leading, trailing, top & bottom  margins of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the leading,
          trailing, top and bottom margins of the item
        - parameter multiplier: The ratio altering the constraint relative to
          leading, trailing, top & bottom  margins of the item prior to the
          `inset` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withMarginsOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Constraid.ConstraintCollection {

        let constraints = flush(withHorizontalMarginsOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          flush(withVerticalMarginsOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
