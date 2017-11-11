#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

/**
 Sets height content hugging and compression resistance priority
 
 - parameter itemA: The `item` you want to constrain
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 */
public func keepIntrinsicHeight(of itemA: Constraid.View, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) {
    itemA.setContentCompressionResistancePriority(priority, for: .vertical)
    itemA.setContentHuggingPriority(priority, for: .vertical)
}

/**
 Sets width content hugging and compression resistance priority

 - parameter itemA: The `item` you want to constrain
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 */
public func keepIntrinsicWidth(of itemA: Constraid.View, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) {
    itemA.setContentCompressionResistancePriority(priority, for: .horizontal)
    itemA.setContentHuggingPriority(priority, for: .horizontal)
}

/**
 Sets height & width content hugging and compression resistance priority

 - parameter itemA: The `item` you want to constrain
 - parameter priority: The priority this constraint uses when being
 evaluated against other constraints
 */
public func keepIntrinsicSize(of itemA: Constraid.View, priority: Constraid.LayoutPriority = Constraid.LayoutPriorityRequired) {
    Constraid.keepIntrinsicHeight(of: itemA, priority: priority)
    Constraid.keepIntrinsicWidth(of: itemA, priority: priority)
}
