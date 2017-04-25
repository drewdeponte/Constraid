#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    @discardableResult
    open func limit(byLeadingEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .leading,
                multiplier: multiplier, constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func limit(byTrailingEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .trailing, multiplier: multiplier,
                constant: (inset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func limit(byTopEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .top,
                multiplier: multiplier, constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func limit(byBottomEdgeOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .bottom,
                multiplier: multiplier, constant: (inset * -1),
                priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func limit(byHorizontalEdgesOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = limit(byTopEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byBottomEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func limit(byVerticalEdgesOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = limit(byLeadingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byTrailingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    open func limit(byEdgesOf item: Any?,
        insetBy inset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = limit(byTopEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byBottomEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byLeadingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          limit(byTrailingEdgeOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    // MARK: - Deprecated

    @discardableResult
    @available(*, deprecated, message: "use limit(byLeadigEdgeOf: , insetBy: ...)")
    open func limit(byLeadingEdgeOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .leading,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byTrailingEdgeOf: , insetBy: ...)")
    open func limit(byTrailingEdgeOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .lessThanOrEqual, toItem: item,
                attribute: .trailing, multiplier: multiplier,
                constant: (constant * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byTopEdgeOf: , insetBy: ...)")
    open func limit(byTopEdgeOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .top,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byBottomEdgeOf: , insetBy: ...)")
    open func limit(byBottomEdgeOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .lessThanOrEqual, toItem: item, attribute: .bottom,
                multiplier: multiplier, constant: (constant * -1),
                priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byHorizontalEdgesOf: , insetBy: ...)")
    open func limit(byHorizontalEdgesOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = limit(byTopEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority) +
                          limit(byBottomEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byVerticalEdgesOf: , insetBy: ...)")
    open func limit(byVerticalEdgesOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = limit(byLeadingEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority) +
                          limit(byTrailingEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    @available(*, deprecated, message: "use limit(byEdgesOf: , insetBy: ...)")
    open func limit(byEdgesOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let constraints = limit(byTopEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority) +
                          limit(byBottomEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority) +
                          limit(byLeadingEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority) +
                          limit(byTrailingEdgeOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
