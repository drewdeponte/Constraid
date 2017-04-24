import XCTest
import Constraid

class ManageIntrinsicSizeRelationsTests: XCTestCase {
    func testKeepIntrinsicHeight() {
        let viewOne = UIView()

        viewOne.keepIntrinsicHeight(priority: 284)

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), 284)
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), 284)
    }

    func testKeepIntrinsicWidth() {
        let viewOne = UIView()

        viewOne.keepIntrinsicWidth(priority: 284)

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), 284)
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), 284)
    }

    func testKeepIntrinsicSize() {
        let viewOne = UIView()

        viewOne.keepIntrinsicSize(priority: 284)

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), 284)
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), 284)
        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), 284)
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), 284)
    }
}
