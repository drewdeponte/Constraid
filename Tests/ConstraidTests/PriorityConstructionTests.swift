import XCTest
import Constraid

class PriorityConstructionTests: XCTestCase {
    func testConstructsAndSetsPriority() {
        let viewOne = View()
        let viewTwo = View()
        let constraint = NSLayoutConstraint(item: viewOne, attribute: .top, relatedBy: .equal, toItem: viewTwo, attribute: .bottom, multiplier: 1.0, constant: 0.0, priority: Constraid.LayoutPriority(rawValue: 22))
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraint.multiplier, 1.0)
        XCTAssertEqual(constraint.constant, 0.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(22)))
    }
}
