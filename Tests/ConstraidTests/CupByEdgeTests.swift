import XCTest
@testable import Constraid

class CupByEdgeTests: XCTestCase {
    func testCupByLeadingEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.cup(byLeadingEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! View, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintThree.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintThree.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintThree.constant, -10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCupByTrailingEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.cup(byTrailingEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! View, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintThree.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintThree.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintThree.constant, -10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCupByTopEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.cup(byTopEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! View, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintThree.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintThree.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintThree.constant, -10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCupByBottomEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.cup(byBottomEdgeOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! View, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintThree.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintThree.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintThree.constant, -10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
