import XCTest
import Constraid

class LimitByMarginTests: XCTestCase {
    func testLimitByLeadingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byLeadingMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testLimitByTrailingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byTrailingMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testLimitByTopMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byTopMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testLimitByBottomMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byBottomMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testLimitByHorizontalMarginsOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byHorizontalMarginsOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint
        let constraintTwo = viewOne.constraints.last! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testLimitByVerticalMarginsOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byVerticalMarginsOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraintOne = viewOne.constraints.first! as NSLayoutConstraint
        let constraintTwo = viewOne.constraints.last! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testLimitByMarginsOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.limit(viewOne, byMarginsOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))

        let constraintOne = viewOne.constraints[0] as NSLayoutConstraint
        let constraintTwo = viewOne.constraints[1] as NSLayoutConstraint
        let constraintThree = viewOne.constraints[2] as NSLayoutConstraint
        let constraintFour = viewOne.constraints[3] as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintThree.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintThree.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, NSLayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintThree.constant, 10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintFour.isActive, true)
        XCTAssertEqual(constraintFour.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintFour.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.relation, NSLayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintFour.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintFour.secondAttribute, NSLayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintFour.constant, -10.0)
        XCTAssertEqual(constraintFour.multiplier, 2.0)
        XCTAssertEqual(constraintFour.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }
}
