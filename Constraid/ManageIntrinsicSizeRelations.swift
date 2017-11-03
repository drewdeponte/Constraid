#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension Constraid.View {
    /**
        Sets height content hugging and compression resistance priority to 1000
        (required)
    */
    open func keepIntrinsicHeight(priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        self.setContentCompressionResistancePriority(priority, for: .vertical)
        self.setContentHuggingPriority(priority, for: .vertical)
    }

    /**
        Sets width content hugging and compression resistance priority to 1000
        (required)
    */
    open func keepIntrinsicWidth(priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        self.setContentCompressionResistancePriority(priority, for: .horizontal)
        self.setContentHuggingPriority(priority, for: .horizontal)
    }

    /**
        Sets height & width content hugging and compression resistance priority to 1000
        (required)
    */
    open func keepIntrinsicSize(priority: ConstraidLayoutPriority = ConstraidLayoutPriorityRequired) {
        keepIntrinsicHeight(priority: priority)
        keepIntrinsicWidth(priority: priority)
    }
}
