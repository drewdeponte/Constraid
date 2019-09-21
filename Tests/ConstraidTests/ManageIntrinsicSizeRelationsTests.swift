import XCTest
import Constraid

class ManageIntrinsicSizeRelationsTests: XCTestCase {
    func testKeepIntrinsicHeight() {
        let viewOne = View()

        Constraid.keepIntrinsicHeight(of: viewOne, priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicWidth() {
        let viewOne = View()

        Constraid.keepIntrinsicWidth(of: viewOne, priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }

    func testKeepIntrinsicSize() {
        let viewOne = View()

        Constraid.keepIntrinsicSize(of: viewOne, priority: Constraid.LayoutPriority(rawValue: 284))

        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .vertical), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentCompressionResistancePriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
        XCTAssertEqual(viewOne.contentHuggingPriority(for: .horizontal), LayoutPriority(rawValue: LayoutPriority.RawValue(284)))
    }
}
