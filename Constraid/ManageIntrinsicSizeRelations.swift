import UIKit

extension UIView {
    open func keepIntrinsicHeight(priority: UILayoutPriority = UILayoutPriorityRequired) {
        self.setContentCompressionResistancePriority(priority, for: .vertical)
        self.setContentHuggingPriority(priority, for: .vertical)
    }

    open func keepIntrinsicWidth(priority: UILayoutPriority = UILayoutPriorityRequired) {
        self.setContentCompressionResistancePriority(priority, for: .horizontal)
        self.setContentHuggingPriority(priority, for: .horizontal)
    }

    open func keepIntrinsicSize(priority: UILayoutPriority = UILayoutPriorityRequired) {
        keepIntrinsicHeight(priority: priority)
        keepIntrinsicWidth(priority: priority)
    }
}
