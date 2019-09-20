import XCTest
import Constraid

#if os(iOS)
import UIKit

class ExpandFromMarginTests: XCTestCase {
    func testExpandFromLeadingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.expand(viewOne, fromLeadingMarginOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandByTrailingMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.expand(viewOne, fromTrailingMarginOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandFromTopMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.expand(viewOne, fromTopMarginOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandFromBottomMarginOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.expand(viewOne, fromBottomMarginOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandFromHorizontalMarginsOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.expand(viewOne, fromHorizontalMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandFromVerticalMarginsOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.expand(viewOne, fromVerticalMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandFromMarginsOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)

        let constraints = Constraid.expand(viewOne, fromMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]
        let constraintFour = viewOne.constraints[3]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintThree.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintThree.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, LayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintThree.constant, -10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintFour.isActive, true)
        XCTAssertEqual(constraintFour.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintFour.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintFour.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraintFour.secondAttribute, LayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintFour.constant, 10.0)
        XCTAssertEqual(constraintFour.multiplier, 2.0)
        XCTAssertEqual(constraintFour.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
#endif
