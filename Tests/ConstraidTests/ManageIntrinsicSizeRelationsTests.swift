import XCTest
@testable import Constraid

class ManageIntrinsicSizeRelationsTests: XCTestCase {
    func testKeepIntrinsicHeight() {
        let viewOne = View()

        let _ = viewOne.constraid.keepIntrinsicHeight(priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicWidth() {
        let viewOne = View()

        let _ = viewOne.constraid.keepIntrinsicWidth(priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicSize() {
        let viewOne = View()

        let _ = viewOne.constraid.keepIntrinsicSize(priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }
}
