#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

public class ConstraidProxy {
    public let base: View
    public var constraintCollection: ConstraintCollection
    
    init(base: View) {
        self.base = base
        self.constraintCollection = []
    }
    
    /**
        Activate the collection of constraints
    */
    public func activate() {
        self.constraintCollection.activate()
    }
    
    /**
        Deactivate the collection of constraints
    */
    public func deactivate() {
        self.constraintCollection.deactivate()
    }
}

public extension View {
    var constraid: ConstraidProxy {
        return ConstraidProxy(base: self)
    }
}
