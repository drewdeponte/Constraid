import XCTest
import Constraid

#if os(iOS)
import UIKit

class PriorityConstructionTests: XCTestCase {
    func testConstructsAndSetsPriority() {
        let viewOne = UIView()
        let viewTwo = UIView()
        let constraint = NSLayoutConstraint(item: viewOne, attribute: .top, relatedBy: .equal, toItem: viewTwo, attribute: .bottom, multiplier: 1.0, constant: 0.0, priority: Constraid.LayoutPriority(rawValue: 22))
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraint.multiplier, 1.0)
        XCTAssertEqual(constraint.constant, 0.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(22)))
    }
}
#endif
