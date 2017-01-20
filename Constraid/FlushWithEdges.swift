#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    public func flush(withLeadingEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .leading, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    public func flush(withTrailingEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .trailing, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    public func flush(withTopEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .top, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    public func flush(withBottomEdgeOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .bottom, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    public func flush(withVerticalEdgesOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        flush(withLeadingEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        flush(withTrailingEdgeOf: item, constant: (-1.0 * constant), multiplier: multiplier,
              priority: priority)
    }

    public func flush(withHorizontalEdgesOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        flush(withTopEdgeOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        flush(withBottomEdgeOf: item, constant: (-1.0 * constant), multiplier: multiplier,
              priority: priority)
    }

    public func flush(withEdgesOf item: Any?, constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
                    priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        
        flush(withHorizontalEdgesOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        flush(withVerticalEdgesOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }
}
