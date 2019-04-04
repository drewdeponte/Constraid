import XCTest
import Constraid

class ManageRelativePositionTests: XCTestCase {
    func testFollowsTheTrailingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.follow(theTrailingMarginOf: viewTwo, with: viewOne, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.trailingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testPrecedesTheLeadingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.precede(theLeadingMarginOf: viewTwo, with: viewOne, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.trailing)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsAboveTheTopMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.set(viewOne, aboveTheTopMarginOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutConstraint.Attribute.bottom)
        XCTAssertEqual(constraint.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutConstraint.Attribute.topMargin)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsBelowTheBottomMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.set(viewOne, belowTheBottomMarginOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutConstraint.Attribute.top)
        XCTAssertEqual(constraint.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutConstraint.Attribute.bottomMargin)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testFollowsTheTrailingEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.follow(theTrailingEdgeOf: viewTwo, with: viewOne, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.trailing)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testPrecedesTheLeadingEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.precede(theLeadingEdgeOf: viewTwo, with: viewOne, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.trailing)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.leading)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsAboveTheTopEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.set(viewOne, aboveTheTopEdgeOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutConstraint.Attribute.bottom)
        XCTAssertEqual(constraint.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutConstraint.Attribute.top)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsBelowTheBottomEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.set(viewOne, belowTheBottomEdgeOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutConstraint.Attribute.top)
        XCTAssertEqual(constraint.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutConstraint.Attribute.bottom)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
