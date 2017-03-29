// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
    /**
        Constrains the object's leading edge to the leading margin of `item`
     
        - parameter item: The `item` you want to constrain the current object to
        - parameter inset: The amount to inset the object from the leading
          margin of the item
        - parameter multiplier: The ratio altering the constraint relative to
          leading margin of the item prior to the `constant` being applied.
        - parameter priority: The priority this constraint uses when being
          evaluated against other constraints

        - returns: Constraint collection containing the generated constraint
    */
    @discardableResult
    open func flush(withLeadingMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .leadingMargin, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func flush(withTrailingMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .trailingMargin, multiplier: multiplier,
                               constant: (-1.0 * inset), priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func flush(withTopMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func flush(withBottomMarginOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .bottomMargin, multiplier: multiplier,
                               constant: (-1.0 * inset), priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func flush(withVerticalMarginsOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withLeadingMarginOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          flush(withTrailingMarginOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func flush(withHorizontalMarginsOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withTopMarginOf: item, insetBy: inset, multiplier: multiplier,
                                priority: priority) +
                          flush(withBottomMarginOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func flush(withMarginsOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withHorizontalMarginsOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          flush(withVerticalMarginsOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    // MARK: - Deprecated

    @discardableResult
    @available(*, deprecated, message: "use flush(withLeadingMarginOf: , insetBy: ...)")
    open func flush(withLeadingMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .leadingMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use flush(withTrailingMarginOf: , insetBy: ...)")
    open func flush(withTrailingMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .trailingMargin, multiplier: multiplier,
                               constant: (-1.0 * constant), priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use flush(withTopMarginOf: , insetBy: ...)")
    open func flush(withTopMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use flush(withBottomMarginOf: , insetBy: ...)")
    open func flush(withBottomMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .bottomMargin, multiplier: multiplier,
                               constant: (-1.0 * constant), priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use flush(withVerticalMarginsOf: , insetBy: ...)")
    open func flush(withVerticalMarginsOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withLeadingMarginOf: item, constant: constant,
                                multiplier: multiplier, priority: priority) +
                          flush(withTrailingMarginOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use flush(withHorizontalMarginsOf: , insetBy: ...)")
    open func flush(withHorizontalMarginsOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withTopMarginOf: item, constant: constant, multiplier: multiplier,
                                priority: priority) +
                          flush(withBottomMarginOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use flush(withMarginsOf: , insetBy: ...)")
    open func flush(withMarginsOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withHorizontalMarginsOf: item, constant: constant,
                                multiplier: multiplier, priority: priority) +
                          flush(withVerticalMarginsOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
