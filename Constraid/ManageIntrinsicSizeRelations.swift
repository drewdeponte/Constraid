#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidView {
    open func keepIntrinsicHeight(priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        self.setContentCompressionResistancePriority(priority, for: .vertical)
        self.setContentHuggingPriority(priority, for: .vertical)
    }

    open func keepIntrinsicWidth(priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        self.setContentCompressionResistancePriority(priority, for: .horizontal)
        self.setContentHuggingPriority(priority, for: .horizontal)
    }

    open func keepIntrinsicSize(priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        keepIntrinsicHeight(priority: priority)
        keepIntrinsicWidth(priority: priority)
    }
}
