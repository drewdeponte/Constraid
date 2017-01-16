import UIKit

extension UIView {
    open func expand(fromWidthOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .width,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .width,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func expand(fromHeightOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .height,
                               relatedBy: .greaterThanOrEqual, toItem: item, attribute: .height,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }
}
