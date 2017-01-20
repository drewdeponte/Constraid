#if os(iOS)
    import UIKit
    public typealias ConstraidView = UIView
#else
    import AppKit
    public typealias ConstraidView = NSView
#endif
