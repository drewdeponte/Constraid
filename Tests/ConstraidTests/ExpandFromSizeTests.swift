import XCTest
@testable import Constraid

class ExpandFromSizeTests: XCTestCase {
    func testExpandFromWidthOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.expand(fromWidthOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandFromHeightOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.expand(fromHeightOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))
        
        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
