import XCTest
import Constraid

#if os(iOS)
import UIKit

class ManageSizeTests: XCTestCase {
    func testSetWidth() {
        let viewOne = UIView()

        let constraints = Constraid.setWidth(of: viewOne, to: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandWidth() {
        let viewOne = UIView()

        let constraints = Constraid.expandWidth(of: viewOne, from: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitWidth() {
        let viewOne = UIView()

        let constraints = Constraid.limitWidth(of: viewOne, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSetHeight() {
        let viewOne = UIView()

        let constraints = Constraid.setHeight(of: viewOne, to: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandHeight() {
        let viewOne = UIView()

        let constraints = Constraid.expandHeight(of: viewOne, from: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitHeight() {
        let viewOne = UIView()

        let constraints = Constraid.limitHeight(of: viewOne, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testMatchWidthOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.matchWidth(of: viewOne, to: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testMatchHeightOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.matchHeight(of: viewOne, to: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testMakeSquare() {
        let viewOne = UIView()

        let constraints = Constraid.equalize(viewOne, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewOne)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 0.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSetAspectRatio() {
        let viewOne = UIView()
        let size = CGSize(width: 50, height: 5)
        let ratio = size.width/size.height as CGFloat
        let constraints = Constraid.setAspectRatio(of: viewOne, toSize: size, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraint = viewOne.constraints.first!
        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.width)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewOne)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.height)
        XCTAssertEqual(constraint.multiplier, ratio)
        XCTAssertEqual(constraint.constant, 0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
#endif
