// We don't conditional import AppKit like normal here because AppKit Autolayout doesn't support
// the margin attributes that UIKit does. And of course this file isn't included in the MacOS
// build target.
import UIKit

extension ConstraidView {
    open func expand(fromBottomMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .bottom,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .bottomMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromTopMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .greaterThanOrEqual,
                               toItem: item, attribute: .topMargin, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func expand(fromLeadingMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .leadingMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromTrailingMarginOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .trailing,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .trailingMargin,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromHorizontalMarginsOf item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        expand(fromTopMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromBottomMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(fromVerticalMarginsOf item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        expand(fromLeadingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromTrailingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }

    open func expand(fromMarginsOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        expand(fromTopMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromBottomMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromLeadingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
        expand(fromTrailingMarginOf: item, constant: constant, multiplier: multiplier,
               priority: priority)
    }
}
