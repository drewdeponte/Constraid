import XCTest
import Constraid

class ConstraintProxyTests: XCTestCase {
    func testConstruction() {
        let viewOne = View()

        let proxy = viewOne.constraid
        XCTAssertEqual(viewOne, proxy.base)
    }

    func testGetConstraintCollection() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.flush(withLeadingEdgeOf: viewTwo)
        let constraints = proxy.constraintCollection

        XCTAssertEqual(constraints.isEmpty, false)
    }

    func testActivate() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.flush(withLeadingEdgeOf: viewTwo)
        let constraints = proxy.constraintCollection

        proxy.activate()

        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
    }

    func testDeactivate() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.flush(withLeadingEdgeOf: viewTwo)
        let constraints = proxy.constraintCollection

        proxy.deactivate()

        let constraintOne = constraints.first!

        XCTAssertEqual(viewOne.constraints, [])
        XCTAssertEqual(constraintOne.isActive, false)
    }
}
