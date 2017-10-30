// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
    /**
        Constrains the object's leading edge to be greater than or equal to the
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
    open func expand(fromLeadingMarginOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .leadingMargin, multiplier: multiplier,
                constant: offset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's trailing edge to be greater than or equal to the
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
    open func expand(fromTrailingMarginOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .trailingMargin, multiplier: multiplier,
                constant: (offset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top edge to be greater than or equal to the
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
    open func expand(fromTopMarginOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .topMargin, multiplier: multiplier,
                constant: offset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's bottom edge to be greater than or equal to the
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
    open func expand(fromBottomMarginOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .bottomMargin, multiplier: multiplier,
                constant: (offset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top & bottom edges to be greater than or equal
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
    open func expand(fromHorizontalMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority) +
                         expand(fromBottomMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    /**
        Constrains the object's leading & trailing edges to be greater than or equal
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
    open func expand(fromVerticalMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromLeadingMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority) +
                         expand(fromTrailingMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    /**
        Constrains the object's top, bottom, leading & trailing edges to be
        greater than or equal to the top, bottom, leading & trailing margin of
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
    open func expand(fromMarginsOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority) +
                         expand(fromBottomMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority) +
                         expand(fromLeadingMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority) +
                         expand(fromTrailingMarginOf: item, offsetBy: offset,
                                multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }
}
