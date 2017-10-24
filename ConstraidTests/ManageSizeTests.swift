import XCTest
import Constraid

class ManageSizeTests: XCTestCase {
    func testSetWidth() {
        let viewOne = UIView()

        let constraints = viewOne.setWidth(10.0, priority: ConstraidLayoutPriority(rawValue: 500))

        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testSetHeight() {
        let viewOne = UIView()

        let constraints = viewOne.setHeight(10.0, priority: ConstraidLayoutPriority(rawValue: 500))
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testMatchWidthOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.matchWidth(of: viewTwo, by: 10.0, multiplier: 2.0, priority: ConstraidLayoutPriority(rawValue: 500))
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testMatchHeightOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = viewOne.matchHeight(of: viewTwo, by: 10.0, multiplier: 2.0, priority: ConstraidLayoutPriority(rawValue: 500))
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }

    func testMakeSquare() {
        let viewOne = UIView()

        let constraints = viewOne.makeSquare(priority: ConstraidLayoutPriority(rawValue: 500))
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewOne)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 0.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
    }
}
