import XCTest
import UIKit
import Constraid

class LayoutGuideTests: XCTestCase {

    @available(iOS 11.0, *)
    func testFlushWithEdgesOfsafeAreaLayoutGuide() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.flush(viewOne, withEdgesOf: viewTwo.safeAreaLayoutGuide, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))

        let constraintOne = viewOne.constraints[0] as NSLayoutConstraint
        let constraintTwo = viewOne.constraints[1] as NSLayoutConstraint
        let constraintThree = viewOne.constraints[2] as NSLayoutConstraint
        let constraintFour = viewOne.constraints[3] as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintOne.secondAttribute, NSLayoutAttribute.top)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintTwo.secondAttribute, NSLayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintThree.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintThree.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintThree.secondAttribute, NSLayoutAttribute.leading)
        XCTAssertEqual(constraintThree.constant, 10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintFour.isActive, true)
        XCTAssertEqual(constraintFour.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraintFour.firstAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraintFour.secondItem as! UILayoutGuide, viewTwo.safeAreaLayoutGuide)
        XCTAssertEqual(constraintFour.secondAttribute, NSLayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.constant, -10.0)
        XCTAssertEqual(constraintFour.multiplier, 2.0)
        XCTAssertEqual(constraintFour.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }
}
