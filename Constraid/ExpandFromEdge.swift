#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    @discardableResult
    open func expand(fromLeadingEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .leading, multiplier: multiplier,
                constant: offset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func expand(fromTrailingEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .trailing, multiplier: multiplier,
                constant: (offset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func expand(fromTopEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .greaterThanOrEqual, toItem: item, attribute: .top,
                multiplier: multiplier, constant: offset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func expand(fromBottomEdgeOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .bottom, multiplier: multiplier,
                constant: (offset * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    open func expand(fromHorizontalEdgesOf item: Any?,
        offsetBy offset: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromBottomEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    @discardableResult
    open func expand(fromVerticalEdgesOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromLeadingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromTrailingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    @discardableResult
    open func expand(fromEdgesOf item: Any?,
        offsetBy offset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromBottomEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromLeadingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority) +
                         expand(fromTrailingEdgeOf: item, offsetBy: offset,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    // MARK: - Deprecated

    @discardableResult
    @available(*, deprecated, message: "use expand(fromLeadigEdgeOf: , offsetBy: ...)")
    open func expand(fromLeadingEdgeOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .leading, multiplier: multiplier,
                constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use expand(fromTrailingEdgeOf: , offsetBy: ...)")
    open func expand(fromTrailingEdgeOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .trailing, multiplier: multiplier,
                constant: (constant * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use expand(fromTopEdgeOf: , offsetBy: ...)")
    open func expand(fromTopEdgeOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top,
                relatedBy: .greaterThanOrEqual, toItem: item, attribute: .top,
                multiplier: multiplier, constant: constant, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use expand(fromBottomEdgeOf: , offsetBy: ...)")
    open func expand(fromBottomEdgeOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom,
                relatedBy: .greaterThanOrEqual, toItem: item,
                attribute: .bottom, multiplier: multiplier,
                constant: (constant * -1), priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use expand(fromHorizontalEdgesOf: , offsetBy: ...)")
    open func expand(fromHorizontalEdgesOf item: Any?,
        constant: CGFloat = 0.0,
        multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         expand(fromBottomEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use expand(fromVerticalEdgesOf: , offsetBy: ...)")
    open func expand(fromVerticalEdgesOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromLeadingEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         expand(fromTrailingEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }

    @discardableResult
    @available(*, deprecated, message: "use expand(fromEdgesOf: , offsetBy: ...)")
    open func expand(fromEdgesOf item: Any?,
        constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
        priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired
        ) -> ConstraidConstraintCollection {

        let collection = expand(fromTopEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         expand(fromBottomEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         expand(fromLeadingEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority) +
                         expand(fromTrailingEdgeOf: item, constant: constant,
                             multiplier: multiplier, priority: priority)
        collection.activate()
        return collection
    }
}
