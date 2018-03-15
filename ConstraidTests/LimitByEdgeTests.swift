import XCTest
import Constraid

class LimitByEdgeTests: XCTestCase {
    func testLimitByLeadingEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byLeadingEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByTrailingEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byTrailingEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByTopEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byTopEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByBottomEdgeOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byBottomEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByHorizontalEdgesOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byHorizontalEdgesOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByVerticalEdgesOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byVerticalEdgesOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByEdgesOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byEdgesOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]
        let constraintFour = viewOne.constraints[3]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintThree.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintThree.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintThree.constant, 10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintFour.isActive, true)
        XCTAssertEqual(constraintFour.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintFour.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintFour.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintFour.secondAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.constant, -10.0)
        XCTAssertEqual(constraintFour.multiplier, 2.0)
        XCTAssertEqual(constraintFour.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
