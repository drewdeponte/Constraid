// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
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

    // MARK: - Deprecated

    @discardableResult
    @available(*, deprecated, message: "use limit(byLeadigMarginOf: , insetBy: ...)")
    open func limit(byLeadingMarginOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .leadingMargin, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byTrailingMarginOf: , insetBy: ...)")
    open func limit(byTrailingMarginOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
               relatedBy: .lessThanOrEqual, toItem: item,
               attribute: .trailingMargin, multiplier: multiplier,
               constant: (constant * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byTopMarginOf: , insetBy: ...)")
    open func limit(byTopMarginOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .topMargin, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byBottomMarginOf: , insetBy: ...)")
    open func limit(byBottomMarginOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .bottomMargin, multiplier: multiplier,
                constant: (constant * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byHorizontalMarginsOf: , insetBy: ...)")
    open func limit(byHorizontalMarginsOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = limit(byTopMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         limit(byBottomMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byVerticalMarginsOf: , insetBy: ...)")
    open func limit(byVerticalMarginsOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = limit(byLeadingMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         limit(byTrailingMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byMarginsOf: , insetBy: ...)")
    open func limit(byMarginsOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = limit(byTopMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         limit(byBottomMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         limit(byLeadingMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         limit(byTrailingMarginOf: item, constant: constant,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }
}
