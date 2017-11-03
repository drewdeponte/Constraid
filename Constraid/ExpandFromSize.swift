#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension Constraid.View {
    /**
        Constrains the object's width to be greater than or equal to the width
        of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          width of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func expand(fromWidthOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .width,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .width, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the object's height to be greater than or equal to the height
        of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter constant: The amount to add to the constraint equation
          after the multiplier.
        - parameter multiplier: The ratio altering the constraint relative to
          height of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func expand(fromHeightOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .height,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .height, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }
}
