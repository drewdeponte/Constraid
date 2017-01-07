import UIKit

extension UIView {
    open func setWidth(_ constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
                       priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        var targetConstraint: NSLayoutConstraint?

        for constraint in self.constraints {
            if constraint.firstAttribute == .width && constraint.relation == .equal {
                targetConstraint = constraint
            }
        }

        if let constraint = targetConstraint {
            self.removeConstraint(constraint)
        }

        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal,
                               toItem: nil, attribute: .notAnAttribute ,
                               multiplier: multiplier, constant: constant,
                               priority: priority)
            ])
    }

    open func setHeight(_ constant: CGFloat = 0.0, multiplier: CGFloat = 1.0,
                        priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        var targetConstraint: NSLayoutConstraint?

        for constraint in self.constraints {
            if constraint.firstAttribute == .height && constraint.relation == .equal {
                targetConstraint = constraint
            }
        }

        if let constraint = targetConstraint {
            self.removeConstraint(constraint)
        }

        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal,
                               toItem: nil, attribute: .notAnAttribute ,
                               multiplier: multiplier, constant: constant,
                               priority: priority)
            ])
    }
}
