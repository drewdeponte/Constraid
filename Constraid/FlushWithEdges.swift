#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    @discardableResult
    public func flush(withLeadingEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .leading, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    public func flush(withTrailingEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let collection = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .trailing, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        collection.activate()
        return collection
    }

    @discardableResult
    public func flush(withTopEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .top, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        constraints.activate()
        return constraints
    }


    @discardableResult
    public func flush(withBottomEdgeOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = ConstraidConstraintCollection([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .bottom, multiplier: multiplier,
                               constant: inset, priority: priority)
            ])
        constraints.activate()
        return constraints
    }

    @discardableResult
    public func flush(withVerticalEdgesOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withLeadingEdgeOf: item, insetBy: inset, multiplier: multiplier,
                                priority: priority) +
                          flush(withTrailingEdgeOf: item, insetBy: (-1.0 * inset),
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    public func flush(withHorizontalEdgesOf item: Any?, insetBy inset: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {

        let constraints = flush(withTopEdgeOf: item, insetBy: inset, multiplier: multiplier,
                                priority: priority) +
                          flush(withBottomEdgeOf: item, insetBy: (-1.0 * inset),
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }

    @discardableResult
    public func flush(withEdgesOf item: Any?, insetBy inset: CGFloat = 0.0, multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) -> ConstraidConstraintCollection {
        
        let constraints = flush(withHorizontalEdgesOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority) +
                          flush(withVerticalEdgesOf: item, insetBy: inset,
                                multiplier: multiplier, priority: priority)
        constraints.activate()
        return constraints
    }
}
