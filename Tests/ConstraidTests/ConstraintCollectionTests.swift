import XCTest
import Constraid

#if os(iOS)
import UIKit

class ConstraintCollectionTests: XCTestCase {
    func testConstruction() {
        let viewOne = UIView()
        let viewTwo = UIView()
        
        _ = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: viewOne, attribute: .leading, relatedBy: .equal,
                               toItem: viewTwo, attribute: .leading, multiplier: 1.0,
                               constant: 0.0)
            ])
    }

    func testActivate() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        
        let constraints = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: viewOne, attribute: .leading, relatedBy: .equal,
                               toItem: viewTwo, attribute: .leading, multiplier: 1.0,
                               constant: 0.0)
            ])

        constraints.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
    }

    func testDeactivate() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        
        let constraints = Constraid.ConstraintCollection([
            NSLayoutConstraint(item: viewOne, attribute: .leading, relatedBy: .equal,
                               toItem: viewTwo, attribute: .leading, multiplier: 1.0,
                               constant: 0.0)
            ])

        constraints.deactivate()

        let constraintOne = constraints.first!

        XCTAssertEqual(viewOne.constraints, [])
        XCTAssertEqual(constraintOne.isActive, false)
    }
}
#endif
