import XCTest

class ManageRelativePositionTests: XCTestCase {
    func testFollowsTheTrailingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.follows(theTrailingMarginOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, 500)
    }

    func testPrecedesTheLeadingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.precedes(theLeadingMarginOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, 500)
    }

    func testSitsAboveTheTopMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.sits(aboveTheTopMarginOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.topMargin)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testSitsBelowTheBottomMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.sits(belowTheBottomMarginOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.bottomMargin)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testFollowsTheTrailingEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.follows(theTrailingEdgeOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, 500)
    }

    func testPrecedesTheLeadingEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.precedes(theLeadingEdgeOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, 500)
    }

    func testSitsAboveTheTopEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.sits(aboveTheTopEdgeOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testSitsBelowTheBottomEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.sits(belowTheBottomEdgeOf: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)

        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, 500)
    }
}
