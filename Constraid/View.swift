#if os(iOS)
    import UIKit
    /**
        Type alias for UIVIew and NSView to make supporting both easier
    */
    public typealias ConstraidView = UIView
#else
    import AppKit
    /**
        Type alias for UIVIew and NSView to make supporting both easier
    */
    public typealias ConstraidView = NSView
#endif
