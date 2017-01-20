import XCTest

class ManageRelativePositionTests: XCTestCase {
    func testSitsAboveTheTopEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        viewOne.sits(aboveTheTopEdgeOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testSitsAboveTheTopMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        viewOne.sits(aboveTheTopMarginOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.topMargin)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, 500)
    }

}
