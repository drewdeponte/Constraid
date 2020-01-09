import XCTest
@testable import Constraid

class CenterWithinEdgesTests: XCTestCase {
    func testCenterVerticallyWithinOffsetDown() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(verticallyWithin: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .down, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterVerticallyWithinOffsetUp() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(verticallyWithin: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .up, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterHorizontallyWithinOffsetRight() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(horizontallyWithin: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .right, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterHorizontallyWithinOffsetLeft() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(horizontallyWithin: viewTwo,  times: 2.0, offsetBy: 10.0, offsetDirection: .left,priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterWithinOffsetDownAndRight() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(within: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .downAndRight, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterWithinOffsetUpAndLeft() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(within: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .upAndLeft, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
