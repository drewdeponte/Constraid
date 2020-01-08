import XCTest
@testable import Constraid

class ManageSizeTests: XCTestCase {
    func testSetWidth() {
        let viewOne = View()
        
        let proxy = viewOne.constraid
            .setWidth(to: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandWidth() {
        let viewOne = View()

        let proxy = viewOne.constraid
            .expandWidth(from: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitWidth() {
        let viewOne = View()

        let proxy = viewOne.constraid
            .limitWidth(by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSetHeight() {
        let viewOne = View()

        let proxy = viewOne.constraid
            .setHeight(to: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandHeight() {
        let viewOne = View()

        let proxy = viewOne.constraid
            .expandHeight(from: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitHeight() {
        let viewOne = View()

        let proxy = viewOne.constraid
            .limitHeight(by: 10, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testMatchWidthOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.matchWidth(of: viewOne, to: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testMatchHeightOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.matchHeight(of: viewOne, to: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testMakeSquare() {
        let viewOne = View()

        let constraints = Constraid.equalize(viewOne, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewOne)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 0.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSetAspectRatio() {
        let viewOne = View()
        let size = CGSize(width: 50, height: 5)
        let ratio = size.width/size.height as CGFloat
        let constraints = Constraid.setAspectRatio(of: viewOne, toSize: size, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!
        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewOne)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.multiplier, ratio)
        XCTAssertEqual(constraint.constant, 0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
