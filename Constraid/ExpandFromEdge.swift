#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    open func expand(fromBottomEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .bottom,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromTopEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .top,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromLeadingEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .leading,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromTrailingEdgeOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .trailing,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromHorizontalEdgesOf item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        expand(fromTopEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromBottomEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(fromVerticalEdgesOf item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        expand(fromLeadingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromTrailingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(fromEdgesOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        expand(fromTopEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromBottomEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromLeadingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromTrailingEdgeOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }
}
