import XCTest
import UIKit
import Constraid

class LayoutGuideTests: XCTestCase {

//    @available(iOS 11.0, *)
//    func testSafeAreaGuideFlush() {
//        let viewOne = UIView()
//        let layoutGuide = UILayoutGuide()
//
//        viewOne.addLayoutGuide(layoutGuide)
//
//        let constraints = Constraid.flush(layoutGuide, withLeadingEdgeOf: viewOne, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
//
//        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
//    }

    @available(iOS 11.0, *)
    func testFlushWithEdgesOfsafeAreaLayoutGuide() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.flush(viewOne, withEdgesOf: viewTwo.safeAreaLayoutGuide, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]
        let constraintFour = viewOne.constraints[3]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutConstraint.Attribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutConstraint.Attribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutConstraint.Attribute.bottom)
        XCTAssertEqual(constraintTwo.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutConstraint.Attribute.bottom)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, NSLayoutConstraint.Attribute.leading)
        XCTAssertEqual(constraintThree.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintThree.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintThree.secondAttribute, NSLayoutConstraint.Attribute.leading)
        XCTAssertEqual(constraintThree.constant, 10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintFour.isActive, true)
        XCTAssertEqual(constraintFour.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintFour.firstAttribute, NSLayoutConstraint.Attribute.trailing)
        XCTAssertEqual(constraintFour.relation, NSLayoutConstraint.Relation.equal)
        XCTAssertEqual(constraintFour.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintFour.secondAttribute, NSLayoutConstraint.Attribute.trailing)
        XCTAssertEqual(constraintFour.constant, -10.0)
        XCTAssertEqual(constraintFour.multiplier, 2.0)
        XCTAssertEqual(constraintFour.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
