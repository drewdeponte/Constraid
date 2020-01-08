#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

public class ConstraidProxy {
    public let base: View
    var constraintCollection: ConstraintCollection
    
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

// DELETE ME
#if os(iOS)
class TestViewController: UIViewController {
    let testView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.testView)
        
        self.testView.constraid
            .setWidth(to: 24)
            .activate()
    }
}
#else
    
#endif
