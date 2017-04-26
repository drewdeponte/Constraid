#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
    Type alias for [NSLayoutConstraint] in case Apple makes constraints not
    cross-platform like they have with other parts of the auto-layout API
*/
public typealias ConstraidConstraintCollection = [NSLayoutConstraint]

public extension Collection where Iterator.Element == NSLayoutConstraint {
    /**
        Activate the collection of constraints
    */
    public func activate() {
        NSLayoutConstraint.activate(self as! [NSLayoutConstraint])
    }

    /**
        Deactivate the collection of constraints
    */
    public func deactivate() {
        NSLayoutConstraint.deactivate(self as! [NSLayoutConstraint])
    }
}
