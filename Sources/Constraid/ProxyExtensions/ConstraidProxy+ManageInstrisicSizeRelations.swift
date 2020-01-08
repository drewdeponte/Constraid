#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

extension ConstraidProxy {
    /**
     Sets height content hugging and compression resistance priority
     
     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     */
    public func keepingIntrinsicHeight(priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        Constraid.keepIntrinsicHeight(of: self.base, priority: priority)
        return self
    }
    
    /**
     Sets width content hugging and compression resistance priority

     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     */
    public func keepingIntrinsicWidth(priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        Constraid.keepIntrinsicWidth(of: self.base, priority: priority)
        return self
    }
    
    /**
     Sets height & width content hugging and compression resistance priority

     - parameter priority: The priority this constraint uses when being
     evaluated against other constraints
     */
    public func keepingIntrinsicSize(priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) -> Self {
        Constraid.keepIntrinsicSize(of: self.base, priority: priority)
        return self
    }
}
