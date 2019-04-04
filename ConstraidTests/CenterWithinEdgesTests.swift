import XCTest
import Constraid

class CenterWithinEdgesTests: XCTestCase {
    func testCenterVerticallyWithinOffsetDown() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.center(viewOne, verticallyWithin: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .down, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterVerticallyWithinOffsetUp() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.center(viewOne, verticallyWithin: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .up, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterHorizontallyWithinOffsetRight() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.center(viewOne, horizontallyWithin: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .right, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterHorizontallyWithinOffsetLeft() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.center(viewOne, horizontallyWithin: viewTwo,  times: 2.0, offsetBy: 10.0, offsetDirection: .left,priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterWithinOffsetDownAndRight() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.center(viewOne, within: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .downAndRight, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintTwo.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterWithinOffsetUpAndLeft() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.center(viewOne, within: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .upAndLeft, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.centerX)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintTwo.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutConstraint.Attribute.centerY)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
