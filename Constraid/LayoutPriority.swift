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
    public typealias ConstraidLayoutPriority = UILayoutPriority
    public let ConstraidLayoutPriorityRequired: ConstraidLayoutPriority = UILayoutPriority.required
    public let ConstraidLayoutPriorityDefaultHigh: ConstraidLayoutPriority = UILayoutPriority.defaultHigh
    public let ConstraidLayoutPriorityDefaultLow: ConstraidLayoutPriority = UILayoutPriority.defaultLow
    public let ConstraidLayoutPriorityFittingSizeLevel: ConstraidLayoutPriority = UILayoutPriority.fittingSizeLevel
#else
    /**
        Type alias for UILayoutPriority and NSLayoutPriority to make supporting
        both iOS and Mac OS easier
    */
    public typealias ConstraidLayoutPriority = NSLayoutPriority
    public let ConstraidLayoutPriorityRequired: ConstraidLayoutPriority = NSLayoutPriorityRequired
    public let ConstraidLayoutPriorityDefaultHigh: ConstraidLayoutPriority = NSLayoutPriorityDefaultHigh
    public let ConstraidLayoutPriorityDragThatCanResizeWindow: ConstraidLayoutPriority = NSLayoutPriorityDragThatCanResizeWindow
    public let ConstraidLayoutPriorityWindowSizeStayPut: ConstraidLayoutPriority = NSLayoutPriorityWindowSizeStayPut
    public let ConstraidLayoutPriorityDragThatCannotResizeWindow: ConstraidLayoutPriority = NSLayoutPriorityDragThatCannotResizeWindow
    public let ConstraidLayoutPriorityDefaultLow: ConstraidLayoutPriority = NSLayoutPriorityDefaultLow
    public let ConstraidLayoutPriorityFittingSizeCompression: ConstraidLayoutPriority = NSLayoutPriorityFittingSizeCompression
#endif
