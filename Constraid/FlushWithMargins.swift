// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
    open func flush(withLeadingMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                               toItem: item, attribute: .leadingMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func flush(withTrailingMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                               toItem: item, attribute: .trailingMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func flush(withTopMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func flush(withBottomMarginOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                               toItem: item, attribute: .bottomMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func flush(withVerticalMarginsOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        flush(withLeadingMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        flush(withTrailingMarginOf: item, constant: (-1.0 * constant), multiplier: multiplier,
              priority: priority)
    }

    open func flush(withHorizontalMarginsOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        flush(withTopMarginOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        flush(withBottomMarginOf: item, constant: (-1.0 * constant), multiplier: multiplier,
              priority: priority)
    }

    open func flush(withMarginsOf item: Any?, constant: CGFloat = 0.0,
                    multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        flush(withHorizontalMarginsOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
        flush(withVerticalMarginsOf: item, constant: constant, multiplier: multiplier,
              priority: priority)
    }
}
