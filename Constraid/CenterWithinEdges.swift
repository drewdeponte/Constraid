#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    open func center(verticallyWithin item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal,
                               toItem: item, attribute: .centerY, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func center(horizontallyWithin item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal,
                               toItem: item, attribute: .centerX, multiplier: multiplier,
                               constant: constant, priority: priority)
            ])
    }

    open func center(within item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {

        self.center(horizontallyWithin: item, constant: constant, multiplier: multiplier,
                                priority: priority)
        self.center(verticallyWithin: item, constant: constant, multiplier: multiplier,
                              priority: priority)
    }
}
