import XCTest
@testable import Constraid

// This is an iOS only test
#if os(iOS)
import UIKit

class ManageRelativePositionTests: XCTestCase {
    func testFollowsTheTrailingMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.follow(theTrailingMarginOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testPrecedesTheLeadingMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.precede(theLeadingMarginOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsAboveTheTopMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.above(theTopMarginOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.topMargin)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsBelowTheBottomMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.below(theBottomMarginOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.bottomMargin)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testPrecedesTheCenterOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.precede(theCenterOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testFollowsTheCenterOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.follow(theCenterOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testFollowsTheTrailingEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.follow(theTrailingEdgeOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testPrecedesTheLeadingEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.precede(theLeadingEdgeOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsAboveTheTopEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.above(theTopEdgeOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsAboveTheCenterOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.above(theCenterOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraint.constant, -10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsBelowTheBottomEdgeOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.below(theBottomEdgeOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testSitsBelowTheCenterOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)
        let proxy = viewOne.constraid.below(theCenterOf: viewTwo, times: 2.0, by: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! View, viewOne)
        XCTAssertEqual(constraint.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraint.relation, LayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! View, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
#endif
