#if os(iOS)
    import UIKit
    /**
        Type alias for UIVIew and NSView to make supporting both easier
    */
    public typealias View = UIView
#else
    import AppKit
    /**
        Type alias for UIVIew and NSView to make supporting both easier
    */
    public typealias View = NSView
#endif
