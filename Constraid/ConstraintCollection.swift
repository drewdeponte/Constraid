#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

public typealias ConstraidConstraintCollection = [NSLayoutConstraint]

public extension Collection where Iterator.Element == NSLayoutConstraint {
    public func activate() {
        NSLayoutConstraint.activate(self as! [NSLayoutConstraint])
    }

    public func deactivate() {
        NSLayoutConstraint.deactivate(self as! [NSLayoutConstraint])
    }
}
