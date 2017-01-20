#if os(iOS)
    import UIKit

    extension ConstraidView {
        open func follows(theTrailingMarginOf item: Any?, by constant: CGFloat = 0.0,
                          multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

            self.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                                   toItem: item, attribute: .trailingMargin, multiplier: multiplier,
                                   constant: constant, priority: priority)
                ])
        }

        open func precedes(theLeadingMarginOf item: Any?, by constant: CGFloat = 0.0,
                           multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

            self.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                                   toItem: item, attribute: .leadingMargin, multiplier: multiplier,
                                   constant: constant, priority: priority)
                ])
        }

        open func sits(aboveTheTopMarginOf item: Any?, by constant: CGFloat = 0.0,
                       multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

            self.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                                   toItem: item, attribute: .topMargin, multiplier: multiplier,
                                   constant: (-1.0 * constant), priority: priority)
                ])
        }

        open func sits(belowTheBottomMarginOf item: Any?, by constant: CGFloat = 0.0,
                       multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

            self.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                                   toItem: item, attribute: .bottomMargin, multiplier: multiplier,
                                   constant: constant, priority: priority)
                ])
        }
    }
#else
    import AppKit
#endif

extension ConstraidView {
    open func follows(theTrailingEdgeOf item: Any?, by constant: CGFloat = 0.0,
                      multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .trailing, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func precedes(theLeadingEdgeOf item: Any?, by constant: CGFloat = 0.0,
                       multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .leading, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func sits(aboveTheTopEdgeOf item: Any?, by constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .top, multiplier: multiplier,
                               constant: (-1.0 * constant), priority: priority)
            ])
    }

    open func sits(belowTheBottomEdgeOf item: Any?, by constant: CGFloat = 0.0,
                        multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .bottom, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }
}
