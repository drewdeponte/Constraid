import XCTest
@testable import Constraid

class LimitByEdgeTests: XCTestCase {
    func testLimitByLeadingEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byLeadingEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByTrailingEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byTrailingEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByTopEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byTopEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByBottomEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byBottomEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByHorizontalEdgesOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byHorizontalEdgesOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByVerticalEdgesOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byVerticalEdgesOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByEdgesOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byEdgesOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]
        let constraintFour = viewOne.constraints[3]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! View, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintThree.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintThree.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintThree.constant, 10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintFour.isActive, true)
        XCTAssertEqual(constraintFour.firstItem as! View, viewOne)
        XCTAssertEqual(constraintFour.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintFour.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintFour.secondAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.constant, -10.0)
        XCTAssertEqual(constraintFour.multiplier, 2.0)
        XCTAssertEqual(constraintFour.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
