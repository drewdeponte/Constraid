#if os(iOS)
    import UIKit

    extension Constraid.View {
        /**
            Constrains the receiver's leading edge to the trailing margin of
            `item`
         
            - parameter item: The `item` you want to constrain the current
              object to
            - parameter constant: The amount to offset the object's leading
              edge from the trailing margin of the `item`
            - parameter multiplier: The ratio altering the constraint relative
              to the trailing margin of the item prior to the constant being
              applied
            - parameter priority: The priority this constraint uses when being
              evaluated against other constraints

            - returns: Constraint collection containing the generated
              constraint
        */
        @discardableResult
        open func follows(theTrailingMarginOf item: Any?,
            by constant: CGFloat = 0.0,
            multiplier: CGFloat = 1.0,
            priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
            ) -> Constraid.ConstraintCollection {

            self.translatesAutoresizingMaskIntoConstraints = false
            let collection = Constraid.ConstraintCollection([
                NSLayoutConstraint(item: self, attribute: .leading,
                    relatedBy: .equal, toItem: item,
                    attribute: .trailingMargin, multiplier: multiplier,
                    constant: constant, priority: priority)
                ])
            collection.activate()
            return collection
        }

        /**
            Constrains the receiver's trailing edge to the leading margin of
            `item`
         
            - parameter item: The `item` you want to constrain the current
              object to
            - parameter constant: The amount to offset the object's trailing
              edge from the leading margin of the `item`
            - parameter multiplier: The ratio altering the constraint relative
              to the leading margin of the item prior to the constant being
              applied
            - parameter priority: The priority this constraint uses when being
              evaluated against other constraints

            - returns: Constraint collection containing the generated
              constraint
        */
        @discardableResult
        open func precedes(theLeadingMarginOf item: Any?,
            by constant: CGFloat = 0.0,
            multiplier: CGFloat = 1.0,
            priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
            ) -> Constraid.ConstraintCollection {

            self.translatesAutoresizingMaskIntoConstraints = false
            let collection = Constraid.ConstraintCollection([
                NSLayoutConstraint(item: self, attribute: .trailing,
                    relatedBy: .equal, toItem: item, attribute: .leadingMargin,
                    multiplier: multiplier, constant: constant,
                    priority: priority)
                ])
            collection.activate()
            return collection
        }

        /**
            Constrains the receiver's bottom edge to the top margin of
            `item`
         
            - parameter item: The `item` you want to constrain the current
              object to
            - parameter constant: The amount to offset the object's bottom
              edge from the top margin of the `item`
            - parameter multiplier: The ratio altering the constraint relative
              to the top margin of the item prior to the constant being
              applied
            - parameter priority: The priority this constraint uses when being
              evaluated against other constraints

            - returns: Constraint collection containing the generated
              constraint
        */
        @discardableResult
        open func sits(aboveTheTopMarginOf item: Any?,
            by constant: CGFloat = 0.0,
            multiplier: CGFloat = 1.0,
            priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
            ) -> Constraid.ConstraintCollection {

            self.translatesAutoresizingMaskIntoConstraints = false
            let collection = Constraid.ConstraintCollection([
                NSLayoutConstraint(item: self, attribute: .bottom,
                    relatedBy: .equal, toItem: item,
                    attribute: .topMargin, multiplier: multiplier,
                    constant: (-1.0 * constant), priority: priority)
                ])
            collection.activate()
            return collection
        }

        /**
            Constrains the receiver's top edge to the bottom margin of
            `item`
         
            - parameter item: The `item` you want to constrain the current
              object to
            - parameter constant: The amount to offset the object's top
              edge from the bottom margin of the `item`
            - parameter multiplier: The ratio altering the constraint relative
              to the bottom margin of the item prior to the constant being
              applied
            - parameter priority: The priority this constraint uses when being
              evaluated against other constraints

            - returns: Constraint collection containing the generated
              constraint
        */
        @discardableResult
        open func sits(belowTheBottomMarginOf item: Any?,
            by constant: CGFloat = 0.0,
            multiplier: CGFloat = 1.0,
            priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
            ) -> Constraid.ConstraintCollection {

            self.translatesAutoresizingMaskIntoConstraints = false
            let collection = Constraid.ConstraintCollection([
                NSLayoutConstraint(item: self, attribute: .top,
                    relatedBy: .equal, toItem: item,
                    attribute: .bottomMargin, multiplier: multiplier,
                    constant: constant, priority: priority)
                ])
            collection.activate()
            return collection
        }
    }
#else
    import AppKit
#endif

extension Constraid.View {
    /**
        Constrains the receiver's leading edge to the trailing edge of
        `item`
     
        - parameter item: The `item` you want to constrain the current
          object to
        - parameter constant: The amount to offset the object's leading
          edge from the trailing edge of the `item`
        - parameter multiplier: The ratio altering the constraint relative
          to the trailing edge of the item prior to the constant being
          applied
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated
          constraint
    */
    @discardableResult
    open func follows(theTrailingEdgeOf item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .equal, toItem: item, attribute: .trailing,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the receiver's trailing edge to the leading edge of
        `item`
     
        - parameter item: The `item` you want to constrain the current
          object to
        - parameter constant: The amount to offset the object's trailing
          edge from the leading edge of the `item`
        - parameter multiplier: The ratio altering the constraint relative
          to the leading edge of the item prior to the constant being
          applied
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated
          constraint
    */
    @discardableResult
    open func precedes(theLeadingEdgeOf item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .equal, toItem: item, attribute: .leading,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the receiver's bottom edge to the top edge of
        `item`
     
        - parameter item: The `item` you want to constrain the current
          object to
        - parameter constant: The amount to offset the object's bottom
          edge from the top edge of the `item`
        - parameter multiplier: The ratio altering the constraint relative
          to the top edge of the item prior to the constant being
          applied
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated
          constraint
    */
    @discardableResult
    open func sits(aboveTheTopEdgeOf item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .equal, toItem: item, attribute: .top,
                multiplier: multiplier, constant: (-1.0 * constant),
                priority: priority)
            ])
        collection.activate()
        return collection
    }

    /**
        Constrains the receiver's top edge to the bottom edge of
        `item`
     
        - parameter item: The `item` you want to constrain the current
          object to
        - parameter constant: The amount to offset the object's top
          edge from the bottom edge of the `item`
        - parameter multiplier: The ratio altering the constraint relative
          to the bottom edge of the item prior to the constant being
          applied
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated
          constraint
    */
    @discardableResult
    open func sits(belowTheBottomEdgeOf item: Any?,
        by constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired
        ) -> Constraid.ConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                toItem: item, attribute: .bottom, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }
}
