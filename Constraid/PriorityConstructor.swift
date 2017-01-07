import UIKit

extension NSLayoutConstraint {
    public convenience init(item: Any, attribute attr1: NSLayoutAttribute,
                            relatedBy: NSLayoutRelation, toItem: Any?, attribute attr2: NSLayoutAttribute,
                            multiplier: CGFloat, constant: CGFloat, priority: UILayoutPriority) {

        self.init(item: item, attribute: attr1, relatedBy: relatedBy, toItem: toItem,
                  attribute: attr2, multiplier: multiplier, constant: constant)
        self.priority = priority
    }
}
