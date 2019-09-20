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
    public typealias LayoutPriority = NSLayoutConstraint.Priority
    public let LayoutPriorityRequired: Constraid.LayoutPriority = NSLayoutConstraint.Priority.required
    public let LayoutPriorityDefaultHigh: Constraid.LayoutPriority = NSLayoutConstraint.Priority.defaultHigh
    public let LayoutPriorityDragThatCanResizeWindow: Constraid.LayoutPriority = NSLayoutConstraint.Priority.dragThatCanResizeWindow
    public let LayoutPriorityWindowSizeStayPut: Constraid.LayoutPriority = NSLayoutConstraint.Priority.windowSizeStayPut
    public let LayoutPriorityDragThatCannotResizeWindow: Constraid.LayoutPriority = NSLayoutConstraint.Priority.dragThatCannotResizeWindow
    public let LayoutPriorityDefaultLow: Constraid.LayoutPriority = NSLayoutConstraint.Priority.defaultLow
    public let LayoutPriorityFittingSizeCompression: Constraid.LayoutPriority = NSLayoutConstraint.Priority.fittingSizeCompression
#endif
