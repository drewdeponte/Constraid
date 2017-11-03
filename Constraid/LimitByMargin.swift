// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension Constraid.View {
    /**
        Constrains the object's leading edge to be less than or equal to the
        leading margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          leading margin of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byLeadingMarginOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .leadingMargin, multiplier: multiplier,
                constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's trailing edge to be less than or equal to the
        leading margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          trailing margin of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byTrailingMarginOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
               relatedBy: .lessThanOrEqual, toItem: item,
               attribute: .trailingMargin, multiplier: multiplier,
               constant: (inset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top edge to be less than or equal to the
        top margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          top margin of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byTopMarginOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .topMargin, multiplier: multiplier,
                constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's bottom edge to be less than or equal to the
        bottom margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          bottom margin of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byBottomMarginOf item: Any?,
        insetBy inset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .bottomMargin, multiplier: multiplier,
                constant: (inset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top & bottom edges to be less than or equal
        to the top & bottom margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          top & bottom margin of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byHorizontalMarginsOf item: Any?,
        insetBy inset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = limit(byTopMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority) +
                         limit(byBottomMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    /**
        Constrains the object's leading & trailing edges to be less than or equal
        to the leading & trailing margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          leading & trailing margin of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byVerticalMarginsOf item: Any?,
        insetBy inset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = limit(byLeadingMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority) +
                         limit(byTrailingMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top, bottom, leading & trailing edges to be
        less than or equal to the top, bottom, leading & trailing margin of
        `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          top, bottom, leading & trailing margin of the item prior to the
          `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func limit(byMarginsOf item: Any?,
        insetBy inset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = limit(byTopMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority) +
                         limit(byBottomMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority) +
                         limit(byLeadingMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority) +
                         limit(byTrailingMarginOf: item, insetBy: inset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }
}
