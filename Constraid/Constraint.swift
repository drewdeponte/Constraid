#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

public extension NSLayoutConstraint {
    /**
        Construct instance of NSLayoutConstraint with priority set

        See UIKit NSLayoutConstraint for further details
     
        - parameter item: The `item` you want to constrain
        - parameter attr1: The attribute of `item` to constrain
        - parameter relatedBy: relation ship to use to constrain `item`'s
            `attr1` to `toItem`'s `attr2`
        - parameter toItem: The item you want to constrain `item` to
        - parameter attr2: The attribute of the `toItem` to constrain
        - parameter mutiplier: The ratio altering the constraint relative to
            toItem's attr2 in the constraint equation
        - parameter constant: The constant in the constraint equation
        - parameter priority: The priority this constraint uses when being
            evaluated against other constraints

        - returns: the constructed NSLayoutConstraint
    */
    public convenience init(item: Any,
        attribute attr1: NSLayoutAttribute,
        relatedBy: NSLayoutRelation,
        toItem: Any?,
        attribute attr2: NSLayoutAttribute,
        multiplier: CGFloat,
        constant: CGFloat,
        priority: Constraid.LayoutPriority) {

        self.init(item: item, attribute: attr1, relatedBy: relatedBy,
            toItem: toItem, attribute: attr2, multiplier: multiplier,
            constant: constant)
        self.priority = priority
    }
}
