#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

#if os(iOS)
    /**
        Type alias for UILayoutPriority and NSLayoutPriority to make supporting
        both iOS and Mac OS easier
    */
    public typealias LayoutPriority = UILayoutPriority
    public let LayoutPriorityRequired: Constraid.LayoutPriority = UILayoutPriority.required
    public let LayoutPriorityDefaultHigh: Constraid.LayoutPriority = UILayoutPriority.defaultHigh
    public let LayoutPriorityDefaultLow: Constraid.LayoutPriority = UILayoutPriority.defaultLow
    public let LayoutPriorityFittingSizeLevel: Constraid.LayoutPriority = UILayoutPriority.fittingSizeLevel
#else
    /**
        Type alias for UILayoutPriority and NSLayoutPriority to make supporting
        both iOS and Mac OS easier
    */
    public typealias LayoutPriority = NSLayoutPriority
    public let LayoutPriorityRequired: Constraid.LayoutPriority = NSLayoutPriorityRequired
    public let LayoutPriorityDefaultHigh: Constraid.LayoutPriority = NSLayoutPriorityDefaultHigh
    public let LayoutPriorityDragThatCanResizeWindow: Constraid.LayoutPriority = NSLayoutPriorityDragThatCanResizeWindow
    public let LayoutPriorityWindowSizeStayPut: Constraid.LayoutPriority = NSLayoutPriorityWindowSizeStayPut
    public let LayoutPriorityDragThatCannotResizeWindow: Constraid.LayoutPriority = NSLayoutPriorityDragThatCannotResizeWindow
    public let LayoutPriorityDefaultLow: Constraid.LayoutPriority = NSLayoutPriorityDefaultLow
    public let LayoutPriorityFittingSizeCompression: Constraid.LayoutPriority = NSLayoutPriorityFittingSizeCompression
#endif
